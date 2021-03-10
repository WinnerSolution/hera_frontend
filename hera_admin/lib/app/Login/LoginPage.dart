import 'package:hera_admin/app/Login/LoginController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  LoginController get con => Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: [
          'Login'.text.make(),
          VxTextField(
            hint: 'Phone or Email ',
            labelText: 'Login',
            borderType: VxTextFieldBorderType.roundLine,
            onChanged: (newPhone) {
              // authController.phone(newPhone);
              con.validatePhone(newPhone);
            },
          ).p12(),
          if (con.codeSent().phoneNumber != null)
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
            onPressed: con.validPhone() //
                ? () => con.sendPhoneVerificationCode()
                : null,
            child: [
              Icon(
                Icons.login,
                size: 12,
              ),
              'Validate'.text.make().p8(),
            ].hStack(),
          ),
        ].vStack(),
      ),
    );
  }
}
