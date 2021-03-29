import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_form/form.dart';

class AddPostController extends ResourceFormController<TPost> {
  var maxImageWidth = 640;
  // final String createdBy;

  Rx<File> selectedImage = Rx<File>();

  AddPostController(
    TPost post,
    // this.createdBy,
  ) : super(record: post, db: firestore);

  Rx<TUser> get user => AppState.find.user;
  String get userProfileImageUrl => AppState.find.userProfileImageUrl;

  // @override
  // Future<TProduct> beforeResourceSave(TProduct record) async {
  //   return record; //.copyWith(createdBy: createdBy);
  // }

  @override
  Future<void> afterResourceSave(record) async {
    await uploadProfileImage(record);
    await Get.back<TPost>(result: record);
  }

  @override
  onReady() {
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
    selectedImage(_list.isNotEmpty ? _list.first : null);
  }

  uploadProfileImage(TPost record) async {
    if (selectedImage == null) return;
    await controllerTaskHandler(
        task: () async {
          //
          // if (selectedImage == null) throw '';
          print("I changed the file to: ${selectedImage().path}");
          // busy(true);
          var result = await cloudStorage.uploadMedia(
            imageToUpload: await FlutterImageCompress.compressWithFile(
              selectedImage().absolute.path,
              minHeight: maxImageWidth,
              minWidth: maxImageWidth,
            ),
            title: 'users_picutures/' + AppState.find.user().id + '/posts/' + record.id,
          );

          if (result.result?.url != null) {
            await firestore.save<TPost>(record.copyWith(
              images: [RemoteImage.fromNetworAsset(result.result)],
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
