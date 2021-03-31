import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/temp/screens/auth/resetpassword.dart';
import 'package:hera_app/themes/styles.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKeyForLogin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool monVal = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: secondary),
        leading: Image.asset(
          'assets/icons/backarrow.png',
          scale: 3,
          color: secondary,
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
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: secondary,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ResetPassword()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Submit',
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
                      buildEmailText(),
                      buildEmailTextField(),
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
                'Forgot password?',
                style: textArialBoldlgsecondary(),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    'Don\'t worry, please enter your Email ID',
                    style: textArialRegularsecondarywithOP(),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildEmailText() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: 'Email ID', style: textArialRegularWhite()),
              TextSpan(
                text: ' *',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          initialValue: 'email',
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
              focusColor: Colors.white),
        ),
      ),
    );
  }

  Widget buildMessageText() {
    return Container(
      child: Text(
        'You will receive a 4 digit code for resetting your password',
        style: textArialRegularlgWhiteeWithOp(),
      ),
    );
  }

  void showSnackbar(message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(milliseconds: 3000),
    );
    // ignore: deprecated_member_use
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
