import 'dart:async';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_form/form.dart';
import 'package:softi_mediamanager/index.dart';

class ProfileFormController extends ResourceFormController<TUser> {
  var maxImageWidth = 640;

  ProfileFormController(TUser profile) : super(record: profile, db: firestore);

  Rx<TUser> get user => AppState.find.user;
  String get userProfileImageUrl => AppState.find.userProfileImageUrl;

  @override
  Future<void> afterResourceSave(record) async {
    Get.back<TUser>(result: record);
  }

  @override
  onInit() {
    // busy.listen((isBusy) {
    //   if (isBusy)
    //     loading.showStatus();
    //   else
    //     loading.dismiss();
    // });
    super.onInit();
  }

  changeProfileImage() async {
    await controllerTaskHandler(
        task: () async {
          //
          final file = await mediaPicker.singleImageSelect(source: await selectPickerSource(), crop: true);
          if (file == null) throw '';
          print("I changed the file to: ${file.path}");
          // busy(true);
          var result = await cloudStorage.uploadMedia(
            imageToUpload: await FlutterImageCompress.compressWithFile(
              file.absolute.path,
              minHeight: maxImageWidth,
              minWidth: maxImageWidth,
            ),
            title: 'users_picutures/' + AppState.find.user().id + '/profile_image',
          );

          if (result.result?.url != null) {
            await firestore.save<TUser>(user().copyWith(
              profileImage: RemoteImage.fromNetworAsset(result.result),
            ));
          }
          // busy(false);
          return 'Saved';
        },
        // messageType: 0,
        // loadingMessage: 'Uploading ...',
        errorHandler: (e) => 'An error occured');
  }
}
