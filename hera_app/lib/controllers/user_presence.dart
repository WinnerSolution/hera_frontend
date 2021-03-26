import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested/nested.dart';
import 'package:softi_common/auth.dart';

// enum UserPresenceState { offline, online, away }

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

  var isAway = {
    'state': 'away',
    'lastChanged': ServerValue.timestamp,
  };

  void _cancel() {
    _sub?.cancel();
    _sub = null;
    _userStatusDatabaseRef = null;
  }

  @override
  void onDetached() {
    print('onDetached');
    setOffline();
  }

  @override
  void onInactive() {
    print('onInactive');
    setAway();
  }

  @override
  void onPaused() {
    print('onPaused');
    setAway();
  }

  @override
  void onResumed() {
    print('onResumed');
    setOnline();
  }

  void setOnline() => _userStatusDatabaseRef?.update(isOnline);

  void setOffline() => _userStatusDatabaseRef?.update(isOffline);

  void setAway() => _userStatusDatabaseRef?.update(isAway);

  rtdbAndLocalFsPresence(AuthUser authUser) {
    _cancel();

    if (authUser == null) return;

    _userStatusDatabaseRef = FirebaseDatabase.instance
        .reference() //
        .child('status/' + authUser.uid);

    print(_userStatusDatabaseRef.onValue.first);

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
