import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';
import 'package:velocity_x/velocity_x.dart';

import 'ProfileForm.controller.dart';

class EditProfile extends StatelessWidget {
  final TUser user;
  EditProfile(this.user);

  ProfileFormController get con => Get.put(ProfileFormController(user));

  @override
  Widget build(BuildContext context) {
    return LoadingStatusWidget(
        controller: con,
        errorWidget: () => Center(child: 'Error'.text.textStyle(textArialRegularsecondary()).make()),
        loadingWidget: () => Center(child: CircularProgressIndicator()),
        builder: () => Scaffold(
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
                      ).onInkTap(() => con.save()),
                    ),
                  )
                ],
              ),
              body: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  buildEditimgCard(),
                  SizedBox(height: 25),
                  buildEditProfileCard(),
                ],
              ),
            ));
  }

  Widget buildEditimgCard() {
    return Container(
      width: Get.mediaQuery.size.width,
      // height: Get.mediaQuery.size.height * 0.37,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
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
            child: Container(),
            // Image.asset('')
          ),
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
    return FormBuilder(
      key: con.formKey,
      initialValue: con.initialValue,
      child: Container(
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
            // buildAccounttext(),
            buildPreivacySwitch(),
            buildNotificationSwitch(),
          ],
        ),
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
        child: FormBuilderTextField(
          name: 'fullname',
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
              TextSpan(text: "Status", style: textArialRegularsecondarysmwithop()),
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
        child: FormBuilderTextField(
          name: 'status',
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Status",
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
        child: FormBuilderDateTimePicker(
          name: 'dateOfBirth',
          inputType: InputType.date,
          //
          // keyboardType: TextInputType.emailAddress,
          style: textArialRegularsecondary(),
          decoration: InputDecoration(
              hintText: "Date of birth",
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

  Widget buildNotificationSwitch() {
    return FormBuilderSwitch(
      name: 'notifications',
      title: 'Notifications'.text.textStyle(textArialRegularsecondary()).make(),
      subtitle: 'Receive notifications from account you are following'.text.make().pOnly(top: 8),
      // initialValue: true,
      decoration: InputDecoration(
        hintText: "Notification",
        hintStyle: textArialRegularsecondary(),
        errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
        errorStyle: TextStyle(color: Color(0xFFF44242)),
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        fillColor: Colors.white,
        focusColor: Colors.white,
      ),
    );
  }

  Widget buildPreivacySwitch() {
    return FormBuilderSwitch(
      name: 'privateProfile',
      title: 'Account Privacy'.text.textStyle(textArialRegularsecondary()).make(),
      subtitle: 'When account is private , only your friends will be able to view your posts'.text.make().pOnly(top: 8),
      // initialValue: true,
      decoration: InputDecoration(
        hintText: "Notification",
        hintStyle: textArialRegularsecondary(),
        errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
        errorStyle: TextStyle(color: Color(0xFFF44242)),
        contentPadding: EdgeInsets.all(10),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        fillColor: Colors.white,
        focusColor: Colors.white,
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
