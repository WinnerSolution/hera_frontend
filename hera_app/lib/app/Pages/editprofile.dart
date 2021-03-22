import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/form.dart';
import 'package:softi_mediamanager/index.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileFormController extends ResourceFormController<TUser> {
  var maxImageWidth = 640;

  ProfileFormController(TUser user) : super(editingRecord: user, db: firestore);

  Rx<TUser> get user => AppState.find.user;
  String get userProfileImageUrl => AppState.find.userProfileImageUrl;

  @override
  Future<void> afterResourceSave(record) async {
    await loading.showSuccess('Saved', duration: 200.milliseconds);
    Get.back<TUser>(result: record);
  }

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

  changeProfileImage() async {
    final file = await mediaPicker.singleImageSelect(source: await selectPickerSource(), crop: true);
    if (file == null) return;
    print("I changed the file to: ${file.path}");
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

  //! Handlers
  // void handleProfileImageChange(File file) async {
  //   print("I changed the file to: ${file.path}");
  //   busy(true);
  //   var result = await cloudStorage.uploadMedia(
  //     imageToUpload: await FlutterImageCompress.compressWithFile(
  //       file.absolute.path,
  //       minHeight: maxImageWidth,
  //       minWidth: maxImageWidth,
  //     ),
  //     title: 'title',
  //   );

  //   if (result.result?.url != null) {
  //     await firestore.save<TUser>(user().copyWith(
  //       profileImage: RemoteImage.fromNetworAsset(result.result),
  //     ));
  //   }
  //   busy(false);
  // }

}

class EditProfile extends StatelessWidget {
  // final bool fav = true;
  ProfileFormController get con => Get.put(ProfileFormController(AppState.find.user()));

  // File _image;

  // Future getImagefromCamera() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);

  //   setState(() {
  //     _image = image;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Edit Profile',
          style: textArialBoldsecondary(),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: secondary),
        elevation: 0.3,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/icons/backarrow.png",
            scale: 3,
            color: secondary,
          ),
        ),
        actions: <Widget>[
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 18),
              child: Text(
                'Save',
                style: textArialBoldxsprimary(),
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          // SizedBox(height:10),
          buildEditimgCard(),
          buildEditProfileCard(),
        ],
      ),
    );
  }

  Widget buildEditimgCard() {
    return Container(
      width: Get.mediaQuery.size.width,
      height: Get.mediaQuery.size.height * 0.37,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(height: 25),
          Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(con.userProfileImageUrl),
                    fit: BoxFit.cover,
                  )),
              // image: DecorationImage(image: AssetImage('assets/images/u4.png'), fit: BoxFit.cover)),
              child: Image.asset('')),
          SizedBox(height: 20),
          Container(
            width: Get.mediaQuery.size.width,
            margin: EdgeInsets.symmetric(horizontal: 15),
            height: 44,
            // ignore: deprecated_member_use
            child: RaisedButton(
              onPressed: () => con.changeProfileImage(),
              color: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
              child: Text(
                'Change Profile Picture',
                style: textArialRegularlgsecondary(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildEditProfileCard() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.20),
              blurRadius: 10,
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildprofilenametext(),
          buildprofilenametextfield(),
          buildplacenametext(),
          buildplacenametextfield(),
          buildemailtext(),
          buildemailtextfield(),
          buildAccounttext(),
        ],
      ),
    );
  }

  Widget buildprofilenametext() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Profile Name", style: textArialRegularsecondarysmwithop()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildprofilenametextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Name",
              hintStyle: textArialRegularsecondary(),
              errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
              errorStyle: TextStyle(color: Color(0xFFF44242)),
              contentPadding: EdgeInsets.all(10),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              // ),

              // focusedBorder: OutlineInputBorder(
              //   // borderSide: BorderSide(color: primary),
              // ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              fillColor: Colors.white,
              focusColor: Colors.white),
        ),
      ),
    );
  }

  Widget buildplacenametext() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Place", style: textArialRegularsecondarysmwithop()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildplacenametextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Place",
              hintStyle: textArialRegularsecondary(),
              errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
              errorStyle: TextStyle(color: Color(0xFFF44242)),
              contentPadding: EdgeInsets.all(10),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              // ),

              // focusedBorder: OutlineInputBorder(
              //   // borderSide: BorderSide(color: primary),
              // ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              fillColor: Colors.white,
              focusColor: Colors.white),
        ),
      ),
    );
  }

  Widget buildemailtext() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Email Id", style: textArialRegularsecondarysmwithop()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildemailtextfield() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Email Id",
              hintStyle: textArialRegularsecondary(),
              errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
              errorStyle: TextStyle(color: Color(0xFFF44242)),
              contentPadding: EdgeInsets.all(10),
              // enabledBorder: const OutlineInputBorder(
              //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              // ),

              // focusedBorder: OutlineInputBorder(
              //   // borderSide: BorderSide(color: primary),
              // ),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              fillColor: Colors.white,
              focusColor: Colors.white),
        ),
      ),
    );
  }

  Widget buildAccounttext() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              'Account Privacy',
              style: textArialBoldsecondary(),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Private Account',
              style: textArialRegularsecondary(),
            ),
            GFToggle(
              onChanged: (bool value) {},
              type: GFToggleType.ios,
              enabledThumbColor: Color(0xFF8DD378),
              enabledTrackColor: Color(0xFF8DD378).withOpacity(0.25),
            )
          ],
        ),
        SizedBox(height: 4),
        Container(
            child: Text(
          'When account is private , only your friends will be able to view your posts',
          style: textArialRegularsecondarysmwithop(),
        )),
        SizedBox(height: 30)
      ],
    );
  }
}
