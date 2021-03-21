import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/app.svg/Profile/Profile.page.controller.dart';
import 'package:hera_app/app.svg/Profile/widgets/ProductListWindget.dart';
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

                      // // BIO
                      // "UI Designer".subtitle2.make(),

                      // EditProfile
                      TextButton(
                        onPressed: con.handleEditProfilePressed,
                        child: 'Edit Profile'.headline5.make(),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Spacer(),
                  ElevatedButton.icon(
                    onPressed: con.handleAddProductPressed,
                    icon: Icon(MdiIcons.plus),
                    label: 'Add Product'.caption.make(),
                  ),
                ],
              ),
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
