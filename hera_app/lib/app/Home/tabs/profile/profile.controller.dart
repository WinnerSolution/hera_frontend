import 'package:get/get.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class ProfileController extends BaseController {
  Rx<TUser> _userProfile = Rx<TUser>();
  Rx<TUserStats> _userStats = Rx<TUserStats>();

  final maxImageWidth = 640;

  final String profileId;

  ProfileController(this.profileId);

  AuthUser get authUser => AppState.find.authUser();

  TUser get userProfile => _userProfile();
  TUserStats get userStats => _userStats();
  // TUserStats get authuserStats => AppState.find.userStats;

  // bool get isConnectedUser {
  //   var _result = (AppState.find.user()?.id == profile?.id) && AppState.find.user().isValid() && profile.isValid();
  //   print((AppState.find.user()?.id ?? '') + '/' + (profile?.id ?? ''));
  //   return _result;
  // }
  bool get isConnectedUser {
    bool _result = (AppState.find.user()?.id ?? '-1') == (profileId ?? '');
    print((AppState.find.user()?.id ?? '-1') + '/' + (profileId ?? ''));
    return _result;
  }

  String get profileImage1 =>
      _userProfile()?.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  loadUserData() async {
    controllerTaskHandler(
        task: () async {
          print(loadingStatus);

          _userProfile = isConnectedUser //
              ? AppState.find.user
              : (await firestore.get<TUser>(profileId).first).obs;

          _userStats = isConnectedUser //
              ? AppState.find.userStats
              : (await firestore.get<TUserStats>(profileId).first).obs;

          // await Future.delayed(3.seconds);

          toggleIdle();

          return '';
        },
        showStatus: false,
        errorHandler: (error) {
          toggleError();
          return '';
        });
  }

  //
  @override
  onInit() {
    loadUserData();
    // busy.listen((isBusy) {
    //   if (isBusy)
    //     loading.showStatus();
    //   else
    //     loading.dismiss();
    // });
    super.onInit();
  }

  void logout() => AppState.find.logout();

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppState.find.user()));
  void handleAddProductPressed() => Get.to(() => ProductForm(product: TProduct()));
}
