import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Profile/Profile.page.controller.dart';
import 'package:hera_app/app/Profile/widgets/ProductListWindget.dart';
import 'package:hera_app/components/extensions/string_extentions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:softi_mediamanager/index.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatelessWidget {
  ProfilePageController get con => Get.put<ProfilePageController>(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: Obx(() => Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      ImagePickerWidget(
                        controller: ImagePickerWidgetController(Get.find()),
                        initialImage: con.profileImage,
                        diameter: 100,
                        shape: ImagePickerWidgetShape.circle,
                        isEditable: true,
                        crop: true,
                        onChange: con.handleProfileImageChange,
                      ),

                      // FUL NAME
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (con.user().fullname ?? '').headline6.make(),

                          // BIO
                          "UI Designer".subtitle2.make(),

                          // EditProfile
                          TextButton(
                            onPressed: con.handleEditProfilePressed,
                            child: 'Edit Profile'.headline5.make(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
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
              Container(
                height: 400,
                child: ProductList(null),
              ),
            ],
          )).scrollVertical(),
      // )
    );
  }
}
