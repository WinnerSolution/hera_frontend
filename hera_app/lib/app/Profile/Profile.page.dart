import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/components/extensions/string_extentions.dart';
import 'package:hera_app/components/forms/ProductForm.dart';
import 'package:hera_app/components/forms/ProfileForm.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_core/hera_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:softi_common/auth.dart';
import 'package:softi_common/core.dart';
import 'package:softi_mediamanager/index.dart';
import 'package:velocity_x/velocity_x.dart';

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
  Future<File> changeImage(Widget modal) async {
    final ImagePicker _picker = ImagePicker();

    File response;
    ImageSource type = await Get.bottomSheet(modal);
    if (type != null) {
      final PickedFile _picked = await _picker.getImage(source: type);
      if (_picked != null) {
        response = File(_picked.path);
      }
    }
    return response;
  }

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
  void handleAddProductPressed() => Get.to(() => ProductForm(TProduct()));
}

class ProfilePage extends StatelessWidget {
  ProfilePageController get con => Get.put<ProfilePageController>(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Obx(() => ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 24),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    ImagePickerWidget(
                      controller: ImagePickerWidgetController(Get.find()),
                      initialImage: con.profileImage,
                      diameter: 180,
                      shape: ImagePickerWidgetShape.circle,
                      isEditable: true,
                      crop: true,
                      onChange: con.handleProfileImageChange,
                    ),

                    // FUL NAME
                    (con.user().fullname ?? '').headline6.makeCentered(),

                    // BIO
                    "UI Designer".subtitle2.makeCentered(),

                    // EditProfile
                    TextButton(
                      onPressed: con.handleEditProfilePressed,
                      child: 'Edit Profile'.headline5.make(),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 24, right: 12),
                            decoration: BoxDecoration(
                                color: Get.theme.backgroundColor,
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      // color: Get.theme.cardTheme.shadowColor.withOpacity(0.14),
                                      offset: Offset(2.0, 2.0)),
                                ]),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                "3".subtitle1.color(Get.theme.colorScheme.primary).makeCentered(),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: "Posts"
                                      .caption
                                      .letterSpacing(0.2)
                                      .color(Get.theme.colorScheme.primary)
                                      .makeCentered(),
                                  // Text("Posts",
                                  // style: AppTheme.getTextStyle(themeData.textTheme.caption,
                                  //     fontWeight: 600, letterSpacing: 0.2)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12, right: 12),
                            decoration: new BoxDecoration(
                                color: Get.theme.backgroundColor,
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10.0,
                                      // color: Get.theme.cardTheme.shadowColor.withOpacity(0.14),
                                      offset: Offset(2.0, 2.0)),
                                ]),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                "159".subtitle1.color(Get.theme.colorScheme.primary).makeCentered(),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: "Followings"
                                      .caption
                                      .letterSpacing(0.2)
                                      .color(Get.theme.colorScheme.primary)
                                      .makeCentered(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 12, right: 24),
                            decoration: new BoxDecoration(
                                color: Get.theme.backgroundColor,
                                borderRadius: BorderRadius.all(Radius.circular(4)),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10.0,
                                      // color: Get.theme.cardTheme.shadowColor.withOpacity(0.14),
                                      offset: Offset(2.0, 2.0)),
                                ]),
                            padding: EdgeInsets.all(16),
                            child: Column(
                              children: <Widget>[
                                "357".subtitle1.color(Get.theme.colorScheme.primary).makeCentered(),
                                Container(
                                  margin: EdgeInsets.only(top: 4),
                                  child: "Followers"
                                      .caption
                                      .letterSpacing(0.2)
                                      .color(Get.theme.colorScheme.primary)
                                      .makeCentered(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 24, right: 24, top: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          "About".subtitle1.letterSpacing(0).make(),
                          Container(
                            margin: EdgeInsets.only(top: 8),
                            child: "_aboutText".subtitle2.letterSpacing(0.1).lineHeight(1.3).make(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  child: Row(
                children: [
                  Spacer(),
                  ElevatedButton.icon(
                    onPressed: con.handleAddProductPressed,
                    icon: Icon(MdiIcons.plus),
                    label: 'Add Product'.caption.make(),
                  ),
                ],
              )),
            ],
          )),
      // )
    );
  }
}
