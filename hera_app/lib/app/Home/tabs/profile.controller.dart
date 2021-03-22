import 'package:get/get.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class ProfileController extends BaseController {
  final maxImageWidth = 640;

  final TUser profile;

  ProfileController(this.profile);

  AuthUser get authUser => AppState.find.authUser();

  // TUser get profile => profile;
  // TUser get user => AppState.find.user();
  TUserStats get userStats => AppState.find.userStats();

  bool get isConnectedUser {
    var _result = (AppState.find.user()?.id == profile?.id) && AppState.find.user().isValid() && profile.isValid();
    print((AppState.find.user()?.id ?? '') + '/' + (profile?.id ?? ''));
    return _result;
  }

  String get profileImage =>
      profile.profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  // /// Alters the actual image
  // Future<File> changeImage1(Widget modal) async {
  //   final ImagePicker _picker = ImagePicker();

  //   File response;
  //   ImageSource type = await Get.bottomSheet(modal);
  //   if (type != null) {
  //     final PickedFile _picked = await _picker.getImage(source: type);
  //     if (_picked != null) {
  //       response = File(_picked.path);
  //     }
  //   }
  //   return response;
  // }

  //
  @override
  onInit() {
    busy.listen((isBusy) {
      if (isBusy)
        loading.showStatus();
      else
        loading.dismiss();
    });
    super.onInit();
  }

  void logout() => AppState.find.logout();

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppState.find.user()));
  void handleAddProductPressed() => Get.to(() => ProductForm(product: TProduct()));
}
