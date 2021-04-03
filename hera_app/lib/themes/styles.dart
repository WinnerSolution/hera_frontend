import 'package:flutter/material.dart';

final primary = const Color(0xFF00BCD4);
final secondary = const Color(0xFF3A506D);
final blacktext = const Color(0xFF272A3F);
final red = const Color(0xFFF34949);
final grey = const Color(0xFFdddddd);
final darkGrey = const Color(0xFF708090);
final star = const Color(0xFFff8064);
final greya = const Color(0xFFDCDCDC);
final border = const Color(0xFFD4D4E0);
final bg = const Color(0xFFF4F7FA);
final bg2 = const Color(0xFFFDFDFD);
final green = const Color(0xFF20C978);
final greyb = const Color(0xFF707070);

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

//..................................Arial Bold ....................................

TextStyle textArialBoldprimary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
    color: primary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldsmprimary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: primary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldxsprimary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: primary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldlgSecondary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: secondary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldsecondary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
    color: secondary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldsecondaryop() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 17.0,
    color: secondary.withOpacity(0.40),
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldWhite() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: Colors.white,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldSecondary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 15.0,
    color: secondary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldsecondarylg() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: secondary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldlgsecondary() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
    color: secondary,
    fontFamily: 'ArialBold',
  );
}

TextStyle textArialBoldlgwhite() {
  return TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
    color: Colors.white,
    fontFamily: 'ArialBold',
  );
}

///////////Arial Regular/////////////

TextStyle textArialRegularWhite() {
  return TextStyle(
    fontSize: 10.0,
    color: Colors.white.withOpacity(0.7),
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularsecondarysmwithop() {
  return TextStyle(
    fontSize: 12.0,
    color: secondary.withOpacity(0.6),
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularSecondarysmwithop() {
  return TextStyle(
    fontSize: 14.0,
    color: secondary.withOpacity(0.6),
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularSecondaryxs() {
  return TextStyle(
    fontSize: 14.0,
    color: secondary,
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularsecondary() {
  return TextStyle(fontSize: 16.0, color: secondary, fontFamily: 'ArialRegular', decoration: TextDecoration.none);
}

TextStyle textArialRegularsecondarydull() {
  return TextStyle(
      fontSize: 16.0, color: secondary.withOpacity(0.6), fontFamily: 'ArialRegular', decoration: TextDecoration.none);
}

TextStyle textArialRegularSecondary() {
  return TextStyle(
    fontSize: 13.0,
    color: secondary,
    wordSpacing: 0.5,
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularcSecondary() {
  return TextStyle(
    fontSize: 15.0,
    color: secondary,
    wordSpacing: 0.5,
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularlgWhite() {
  return TextStyle(
    fontSize: 13.0,
    color: Colors.white,
    wordSpacing: 0.5,
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularlgWhitee() {
  return TextStyle(
    fontSize: 16.0,
    color: Colors.white,
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularsecondarywithop() {
  return TextStyle(
    fontSize: 16.0,
    color: secondary.withOpacity(0.6),
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularlgWhiteeWithOp() {
  return TextStyle(
    fontSize: 16.0,
    color: Colors.white.withOpacity(0.87),
    fontFamily: 'ArialRegular',
  );
}

TextStyle textArialRegularsecondarywithOP() {
  return TextStyle(
      fontSize: 18.0, color: secondary.withOpacity(0.60), fontFamily: 'ArialRegular', decoration: TextDecoration.none);
}

TextStyle textArialRegularlgsecondary() {
  return TextStyle(fontSize: 20.0, color: secondary, fontFamily: 'ArialRegular', decoration: TextDecoration.none);
}

TextStyle textArialRegularlgwhite() {
  return TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'ArialRegular', decoration: TextDecoration.none);
}
