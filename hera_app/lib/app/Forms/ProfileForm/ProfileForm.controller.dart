import 'dart:async';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/form.dart';
import 'package:softi_mediamanager/index.dart';

class ProfileFormController extends ResourceFormController<TUser> {
  var maxImageWidth = 640;

  ProfileFormController(TUser profile) : super(profile, db: firestore);

  Rx<TUser> get user => AppController.find.user;
  String get userProfileImageUrl => AppController.find.userProfileImageUrl;

  @override
  Future<void> afterResourceSave(record) async {
    Get.back<TUser>(result: record);
  }

  @override
  void onInit() {
    // busy.listen((isBusy) {
    //   if (isBusy)
    //     loading.showStatus();
    //   else
    //     loading.dismiss();
    // });
    super.onInit();
  }

  Future<void> changeProfileImage() async {
    await controllerTaskHandler(
        task: () async {
          //
          final file = await mediaPicker.singleImageSelect(source: await selectPickerSource(), crop: true);
          if (file == null) throw '';

          // busy(true);
          var result = await cloudStorage.uploadMedia(
            imageToUpload: await FlutterImageCompress.compressWithFile(
              file.absolute.path,
              minHeight: maxImageWidth,
              minWidth: maxImageWidth,
            ),
            title: 'users_picutures/' + AppController.find.user().id + '/profile_image',
          );

          if (result.result?.url != null) {
            await firestore.api<TUser>().save(
                  user().copyWith(
                    profileImage: RemoteImage.fromNetworAsset(result.result),
                  )
                    ..setId(user().getId())
                    ..setPath(user().getPath()),
                );
          }
          // busy(false);
          return 'Saved';
        },
        // messageType: 0,
        // loadingMessage: 'Uploading ...',
        errorHandler: (e) => 'An error occured');
  }
}
