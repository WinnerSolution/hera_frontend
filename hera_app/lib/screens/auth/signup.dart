import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/Home/home.dart';
import 'package:hera_app/screens/auth/login.dart';
import 'package:hera_app/themes/styles.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKeyForLogin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildLoginPageForm(),
          ],
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              buildwelcometext(),
              SizedBox(height: 30),
              Container(
                  padding: const EdgeInsets.all(17.0),
                  color: primary,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      buildUserNameText(),
                      buildUserNameTextField(),
                      buildEmailText(),
                      buildEmailTextField(),
                      buildPasswordText(),
                      buildPasswordTextField(),
                      buildConfirmPasswordText(),
                      buildConfirmPasswordTextField(),
                      buildGenderSection(),
                      buildSignupButton(),
                      buildLoginLink(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget buildwelcometext() {
    return Center(
      child: Column(
        children: <Widget>[
          //  SvgPicture.asset('assets/icons/logo.svg',width: 75,height: 75,),
          Image.asset(
            'assets/icons/logo.png',
            width: 75,
            height: 75,
          ),
          SizedBox(height: 15),
          Text(
            'Welcome!',
            style: textArialBoldsecondarylg(),
          )
        ],
      ),
    );
  }

  Widget buildUserNameText() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "UserName", style: textArialRegularWhite()),
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

  Widget buildUserNameTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          initialValue: "user",
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
              fillColor: Colors.white,
              focusColor: Colors.white),
        ),
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
              TextSpan(text: "Email ID", style: textArialRegularWhite()),
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
          initialValue: "email",
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

  Widget buildPasswordText() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: GFTypography(
        showDivider: false,
        child: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: "Password", style: textArialRegularWhite()),
              // TextSpan(
              //   text: ' *',
              //   style: TextStyle(color: Color(0xFFFFFFFF)),
              // ),
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
          initialValue: "12345",
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
              fillColor: Colors.white,
              focusColor: Colors.white),
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
              TextSpan(text: "Confirm Password", style: textArialRegularWhite()),
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

  Widget buildConfirmPasswordTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          initialValue: "12345",
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
              fillColor: Colors.white,
              focusColor: Colors.white),
          obscureText: true,
        ),
      ),
    );
  }

  Widget buildGenderSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: Text(
              'Gender:',
              style: textArialBoldWhite(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      ' Male',
                      style: textArialRegularlgWhite(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Radio(
                        value: 1,
                        groupValue: selectedRadio,
                        activeColor: secondary,
                        onChanged: (val) {
                          print("Radio $val");
                          setSelectedRadio(val);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Female',
                    style: textArialRegularlgWhite(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      activeColor: secondary,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadio(val);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Other',
                    style: textArialRegularlgWhite(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Radio(
                      value: 3,
                      groupValue: selectedRadio,
                      activeColor: secondary,
                      onChanged: (val) {
                        print("Radio $val");
                        setSelectedRadio(val);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSignupButton() {
    return Container(
      height: 55,
      margin: EdgeInsets.only(top: 30, bottom: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 5)]),
      // ignore: deprecated_member_use
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
        color: secondary,
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
              "Create Account",
              style: textArialBoldlgwhite(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLoginLink() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
      child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Already have an account?',
            style: textArialBoldWhite(),
          )),
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
