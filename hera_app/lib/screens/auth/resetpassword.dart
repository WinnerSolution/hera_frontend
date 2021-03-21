import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:hera_app/screens/Home/home.dart';
import 'package:hera_app/themes/styles.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final GlobalKey<FormState> _formKeyForLogin = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String enteredOtp;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: secondary),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildLoginPageForm(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 55,
        margin: EdgeInsets.only(left: 17, right: 17, bottom: 40),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 5)]),
        // ignore: deprecated_member_use
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          // size: GFSize.LARGE,
          color: secondary,
          // blockButton: true,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Submit",
                style: textArialBoldlgwhite(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginPageForm() {
    return Form(
      key: _formKeyForLogin,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              buildwelcometext(),
              SizedBox(height: 80),
              Container(
                  padding: EdgeInsets.only(left: 17, right: 17),
                  color: primary,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      buildPasswordText(),
                      buildPasswordTextField(),
                      buildConfirmPasswordText(),
                      buildConfirmPasswordTextField(),
                      buildOtpText(),
                      SizedBox(height: 10),
                      buildOtpField(),
                      buildMessageText(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildwelcometext() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Reset password?',
                style: textArialBoldlgsecondary(),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.87,
                  child: Text(
                    "Please enter the 4 digit code received in your Email",
                    style: textArialRegularsecondarywithOP(),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildPasswordText() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "New Password", style: textArialRegularWhite()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          initialValue: "123456",
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
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
            focusColor: Colors.white,
          ),
          obscureText: true,
        ),
      ),
    );
  }

  Widget buildConfirmPasswordText() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Confirm New Password", style: textArialRegularWhite()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildConfirmPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          initialValue: "123456",
          style: textArialRegularsecondary(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
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
            focusColor: Colors.white,
          ),
          obscureText: true,
        ),
      ),
    );
  }

  Widget buildOtpText() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "OTP", style: textArialRegularWhite()),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildOtpField() {
    return Form(
      key: _formKey,
      child: Container(
        // width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.all(30),
        // height: 100,
        child: PinEntryTextField(
          // fieldWidth: 50,
          showFieldAsBox: true,
          onSubmit: (String pin) {
            if (mounted) {
              setState(() {
                enteredOtp = pin;
              });
            }
          },
        ),
      ),
    );
  }

  Widget buildMessageText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 25),
          child: Text(
            'Resend OTP',
            style: textArialRegularlgWhiteeWithOp(),
          ),
        ),
      ],
    );
  }
}
