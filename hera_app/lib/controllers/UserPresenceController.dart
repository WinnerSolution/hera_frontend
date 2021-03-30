import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:nested/nested.dart';
import 'package:softi_common/auth.dart';

class UserPresence extends SuperController {
  StreamSubscription<Event> _sub;
  DatabaseReference _userStatusDatabaseRef;

  var isOffline = {
    'state': 'offline',
    'lastChanged': ServerValue.timestamp,
  };

  var isOnline = {
    'state': 'online',
    'lastChanged': ServerValue.timestamp,
  };

  var isOfflineFirestore = {
    'state': 'offline',
    'lastChanged': FieldValue.serverTimestamp(),
  };

  var isOnlineFirestore = {
    'state': 'online',
    'lastChanged': FieldValue.serverTimestamp(),
  };

  var isAwayFirestore = {
    'state': 'away',
    'lastChanged': FieldValue.serverTimestamp(),
  };

  void _cancel() {
    _sub?.cancel();
    _sub = null;
    _userStatusDatabaseRef = null;
  }

  @override
  void onDetached() => setOffline();

  @override
  void onInactive() => setAway();

  @override
  void onPaused() => setAway();

  @override
  void onResumed() => setOnline();

  void _changeUserPresence(Map<String, dynamic> presence) {
    if (AppController.find.userStats()?.getId() != null) {
      FirebaseFirestore.instance //
          .doc('civi_users_stats/${AppController.find.userStats().getId()}')
          .update({'presenceState': presence});
    }
  }

  void setOnline() => _changeUserPresence(isOnlineFirestore);

  void setOffline() => _changeUserPresence(isOfflineFirestore);

  void setAway() => _changeUserPresence(isAwayFirestore);

  rtdbAndLocalFsPresence(AuthUser authUser) {
    _cancel();

    if (authUser == null) return;

    _userStatusDatabaseRef = FirebaseDatabase.instance
        .reference() //
        .child('status/' + authUser.uid);

    _sub = FirebaseDatabase.instance.reference().child('.info/connected').onValue.listen((Event event) async {
      if (event.snapshot.value == false) {
        setOffline();
      } else {
        setOnline();
      }
    });

    _userStatusDatabaseRef.onDisconnect().update(isOffline).then((result) => null);
  }
}

class ManageState extends SingleChildStatelessWidget {
  final UserPresence controller;

  final Widget child;

  ManageState({Key key, this.child})
      : controller = Get.put(UserPresence()),
        super(key: key);

  @override
  Widget buildWithChild(BuildContext context, Widget child) {
    return child;
  }
}
