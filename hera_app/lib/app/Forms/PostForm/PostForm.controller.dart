import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/form.dart';

class AddPostController extends ResourceFormController<TPost> {
  var maxImageWidth = 640;
  // final String createdBy;

  Rx<File> selectedImage = Rx<File>(null);

  AddPostController(
    TPost post,
    // this.createdBy,
  ) : super(post, db: firestore);

  Rx<TUser> get user => AppController.find.user;
  String get userProfileImageUrl => AppController.find.userProfileImageUrl;

  @override
  Future<void> afterResourceSave(record) async {
    await uploadProfileImage(record);
    Get.back<TPost>(result: record);
  }

  @override
  void onReady() {
    // busy.listen((isBusy) {
    //   if (isBusy)
    //     loading.showStatus();
    //   else
    //     loading.dismiss();
    // });
    selectPostImage();
    super.onReady();
  }

  Future<void> selectPostImage() async {
    // selectedImage(await mediaPicker.singleImageSelect(source: await selectPickerSource(), crop: true));

    var _list = (await mediaPicker.selectMediaFromGallery()).map((e) => e.file).toList();
    if (selectedImage == null) selectedImage(null);
    selectedImage(_list.isNotEmpty ? _list.first : null);
  }

  Future<void> uploadProfileImage(TPost record) async {
    if (selectedImage == null) return;
    await controllerTaskHandler(
        task: () async {
          var result = await cloudStorage.uploadMedia(
            imageToUpload: await FlutterImageCompress.compressWithFile(
              selectedImage().absolute.path,
              minHeight: maxImageWidth,
              minWidth: maxImageWidth,
            ),
            title: 'users_picutures/' + AppController.find.user().id + '/posts/' + record.id,
          );

          var newRecord = record.copyWith(
            images: [RemoteImage.fromNetworAsset(result.result)],
          )
            ..setId(record.id)
            ..setPath(record.path);

          if (result.result?.url != null) {
            await firestore.api<TPost>().save(newRecord);
          }
          // busy(false);
          return 'Saved';
        },
        // messageType: 0,
        // loadingMessage: 'Uploading ...',
        errorHandler: (e) => 'An error occured');
  }
}
