import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/Login/Login.controller.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:hera_app/components/extensions/string_extentions.dart';

class LoginPage extends StatelessWidget {
  LoginController get con => Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SafeArea(
        child: Scaffold(
          body: [
            'Login'.text.make(),
            VxTextField(
              hint: 'Phone or Email ',
              labelText: 'Login',
              borderType: VxTextFieldBorderType.roundLine,
              onChanged: (newPhone) {
                con.validateLoginInput(newPhone);
              },
            ).p12(),
            ElevatedButton(
              onPressed: con.isLoginInputValid && con.isEditing //
                  ? () => con.LoginWithPhoneOrEmail()
                  : null,
              child: [
                Icon(
                  Icons.login,
                  size: 12,
                ),
                'Login'.text.make().p8(),
              ].hStack(),
            ),
            if (con.isPhoneCodeSent) ...[
              VxTextField(
                hint: 'Phone or Email ',
                labelText: 'Code',
                borderType: VxTextFieldBorderType.roundLine,
                onChanged: (code) {
                  // authController.phone(newPhone);
                  if (code.length == 6) con.verifyPhoneNumber(code);
                },
              ).p12(),
              ElevatedButton(
                onPressed: con.isLoginInputValid //

                    ? () => con.sendPhoneVerificationCode()
                    : null,
                child: [
                  Icon(
                    Icons.check,
                    size: 12,
                  ),
                  'Validate'.text.make().p8(),
                ].hStack(),
              ),
              8.0.heightBox,
              TextButton(onPressed: () => con.sendPhoneVerificationCode(), child: 'Resend Code'.caption.make()),
            ],
            if (con.isEmailSent) ...[
              'Email Login Sent!'.bodyText1.make(),
            ],
            if (!con.isEditing) ...[
              TextButton(onPressed: () => con.reset(), child: 'Use different identifier'.caption.make()),
            ]
          ].vStack(),
        ),
      ),
    );
  }
}
