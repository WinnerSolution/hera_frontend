import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';

class ProfilePageController extends BaseController {
  final maxImageWidth = 640;

  ProfilePageController();

  Rx<TUser> get user => AppState.find.user;
  Rx<AuthUser> get authUser => AppState.find.authUser;

  String get profileImage =>
      AppState.find.user().profileImage?.url ??
      'https://firebasestorage.googleapis.com/v0/b/softi-hera.appspot.com/o/dummy450x450.jpg?alt=media&token=10a37525-a4a5-4376-bd34-229b2d1a508c';

  uploadImage(File file) async {
    busy(true);
    var result = await cloudStorage.uploadMedia(
      imageToUpload: await FlutterImageCompress.compressWithFile(
        file.absolute.path,
        minHeight: maxImageWidth,
        minWidth: maxImageWidth,
      ),
      title: 'title',
    );

    if (result.result?.url != null) {
      await firestore.save<TUser>(user().copyWith(
        profileImage: RemoteImage.fromNetworAsset(result.result),
      ));
    }
    busy(false);
  }

  /// Alters the actual image
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

  //! Handlers
  void handleProfileImageChange(File file) async {
    print("I changed the file to: ${file.path}");
    uploadImage(file);
  }

  void handleEditProfilePressed() => Get.to(() => ProfileForm(AppState.find.user()));
  void handleAddProductPressed() => Get.to(() => ProductForm(product: TProduct()));
}
