import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/auth/forgotpassword.dart';
import 'package:hera_app/screens/auth/signup.dart';
import 'package:hera_app/themes/styles.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKeyForLogin = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedRadio;
  bool monVal = false;

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
      backgroundColor: primary,
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
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 130),
              buildwelcometext(),
              SizedBox(height: 90),
              Container(
                  padding: EdgeInsets.only(left: 17, right: 17),
                  color: primary,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      buildEmailText(),
                      buildEmailTextField(),
                      buildPasswordText(),
                      buildPasswordTextField(),
                      buildRememberpwd(),
                      buildLoginButton(),
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
            'Welcome back!',
            style: textArialBoldsecondarylg(),
          )
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

  Widget buildRememberpwd() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  value: monVal,
                  activeColor: secondary,
                  onChanged: (bool value) {
                    setState(() {
                      monVal = value;
                    });
                  },
                ),
                Text(
                  'Remember me',
                  style: textArialRegularlgWhitee(),
                )
              ],
            )
          ],
        ),
        InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassword()),
              );
            },
            child: Text(
              'Forgot password?',
              style: textArialRegularlgWhitee(),
            )),
      ],
    );
  }

  Widget buildLoginButton() {
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
        // size: GFSize.LARGE,
        color: secondary,
        // blockButton: true,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login",
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
          MaterialPageRoute(builder: (context) => SignUp()),
        );
      },
      child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            "Don't have an account?",
            style: textArialBoldWhite(),
          )),
    );
  }

  Widget buildcontinuetext() {
    return Text(
      'OR',
      textAlign: TextAlign.center,
      // style: textBarlowRegularBlack(),
    );
  }

  Widget buildsignuplink() {
    return InkWell(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => Signup()),
        // );
      },
      // child: Padding(
      //   padding: const EdgeInsets.only(bottom: 20.0),
      //   child: RichText(
      //     text: TextSpan(
      //       children: <TextSpan>[
      //         TextSpan(text: "Register?", style: textbarlowRegularaPrimary()),
      //         TextSpan(
      //           text: '',
      //           style: TextStyle(color: primary),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget buildsocialbuttons() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 0.0, right: 0.0),
            child: GFButton(
              size: GFSize.LARGE,
              icon: Icon(
                IconData(
                  0xe906,
                  fontFamily: 'icomoon',
                ),
                color: Colors.white,
              ),
              buttonBoxShadow: true,
              color: Color(0xFF3B5998),
              onPressed: () {},
              child: Text(
                "Log in with Facebook",
                // style: textBarlowRegularrWhite(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
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
