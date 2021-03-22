import 'package:firebase_database/firebase_database.dart';

class UserPresence {
  static final FirebaseDatabase _db = FirebaseDatabase.instance;

  static rtdbAndLocalFsPresence(uid) async {
    // All the refs required for updation

    var userStatusDatabaseRef = _db.reference().child('status/' + uid);

    var isOfflineForDatabase = {
      "state": 'offline',
      "last_changed": ServerValue.timestamp,
    };

    var isOnlineForDatabase = {
      "state": 'online',
      "last_changed": ServerValue.timestamp,
    };

    _db.reference().child('.info/connected').onValue.listen((Event event) async {
      if (event.snapshot.value == false) {
        userStatusDatabaseRef.update(isOfflineForDatabase);
        // userStatusFirestoreRef.update(isOfflineForFirestore);
      } else {
        userStatusDatabaseRef.update(isOnlineForDatabase);
        // userStatusFirestoreRef.update(isOnlineForFirestore);
      }
    });

    userStatusDatabaseRef.onDisconnect().update(isOfflineForDatabase);
  }
}
