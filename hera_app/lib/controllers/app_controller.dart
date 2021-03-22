import 'dart:async';

import 'package:get/get.dart';
import 'package:hera_app/controllers/user_presence.dart';
import 'package:hera_app/routes/routes.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class AppState extends BaseController //
    with
        ThemeControllerMixin,
        LocaleControllerMixin,
        BindingControllerMixin,
        AuthControllerMixin {
  //
  static AppState get find => Get.find<AppState>();

  final user = TUser().obs;
  final userStats = TUserStats().obs;

  final isNewAuthUser = false.obs;
  final isNewUser = false.obs;

  // var presence = UserPresence();

  // final userStore = TStore().obs;
  // final categories = RxList<TCategory>();

  StreamSubscription _userSub;

  void _initDataBinding() {
    //
    binder<AuthUser, TUser>(
      Get.find<IAuthService>().authUserStream.skip(0),
      user,
      binder: (_authUser) => firestore.get<TUser>(_authUser.uid, reactive: true),
      canBind: (_authUser) => _authUser?.uid != null,
      handler: (_authUser, _event) {
        // _userEventCount++;
        if (_event?.isValid() ?? false) {
          user(_event);
        } else {
          isNewUser(true);
          firestore.save<TUser>(TUser(
            id: _authUser.uid,
            email: _authUser.email,
            phone: _authUser.phoneNumber,
          ));
        }
      },
      // masterHandler: (_authUser) {
      //   if (_authUser?.uid == null) user(TUser());
      // },
    );

    //
    binder<TUser, TUserStats>(
      user.stream,
      userStats,
      binder: (_user) => firestore.get<TUserStats>(_user.id, reactive: true),
      canBind: (_user) => _user?.isValid() ?? false,
      handler: (_user, _event) {
        // _userEventCount++;
        if (_event?.isValid() ?? false) {
          userStats(_event);
        } else {
          // isNewUser(true);
          firestore.save<TUserStats>(TUserStats(
            id: _user.id,
            followersCount: 0,
            followingCount: 0,
            likesCount: 0,
            postsCount: 0,
          ));
        }
      },
      // masterHandler: (_authUser) {
      //   if (_authUser?.uid == null) user(TUser());
      // },
    );

    //
    // binder<AuthUser, TStore>(
    //   Get.find<IAuthService>().authUserStream,
    //   userStore,
    //   binder: (_authUser) => firestore.get<TStore>(_authUser.uid, reactive: true),
    //   canBind: (_authUser) => (_authUser?.uid != null),
    //   handler: (_authUser, _event) {
    //     if (_event?.isValid() ?? false) {
    //       userStore(_event);
    //     } else {
    //       firestore.save<TStore>(TStore(
    //         id: _authUser.uid,
    //         name: 'My Restaurant',
    //       ));
    //     }
    //   },
    //   // masterHandler: (_authUser) {
    //   //   if (_authUser?.uid == null) userStore(TStore());
    //   // },
    // );

    //
    // binderList<TStore, TCategory>(
    //   userStore.stream,
    //   categories,
    //   binder: (_store) => firestore //
    //       .find<TCategory>(
    //         Filter()
    //             // .$filter$eq('storeId', _store.id)
    //             .build(),
    //         reactive: true,
    //       )
    //       .map((event) => event.data),
    //   canBind: (_store) => _store?.isValid(),
    //   handler: (_store, _categoriesList) {
    //     categories(_categoriesList);
    //   },
    // );
  }

  void _iniReactiveRouting() {
    void _listner(TUser value) {
      // if (authEventCount() == 0) return;

      var deviceLoggedIn = value.isValid();

      //
      if (deviceLoggedIn) {
        //
        Get.offNamed(Routes.home);
        //
      } else {
        //
        Get.offNamed(Routes.login);
        //
      }

      authApi.authUserStream.listen((event) {
        Get.find<UserPresence>().rtdbAndLocalFsPresence(event);
      });
    }

    /// Reactive routing
    // if (_userEventCount > 0) _listner(user());
    user.stream.listen(_listner);
    // user.stream.listen((event) => );
  }

  logout() {
    Get.find<UserPresence>().setOffline();
    authApi.signOut();
  }

  @override
  void onInit() {
    print('AppController INIT');
    super.onInit();

    // Main controller init
    // initAuth();
    getThemeMode();
    getLanguage();
  }

  // void checkEmailLogin() {
  //   var url = window.location.href;
  //   window.console.log(url);
  // }

  @override
  void onReady() {
    print('AppController READY');

    //
    // checkEmailLogin();

    _iniReactiveRouting();
    _initDataBinding();
    super.onReady();
  }

  @override
  void onClose() {
    _userSub.cancel();
    super.onClose();
  }

  // utils
  String get userProfileImageUrl =>
      user().profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';
}
