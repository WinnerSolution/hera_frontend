import 'package:flutter/material.dart';

ThemeData getTheme() {
  final buttonTheme = darkTheme.buttonTheme.copyWith(
    colorScheme: const ColorScheme(
      primary: Color(0xff8300ff),
      primaryVariant: Color(0xff5501c2),
      secondary: Color(0xfffbff00),
      secondaryVariant: Color(0xfff8fe85),
      surface: Color(0xff000000),
      background: Color(0xff202020),
      error: Color(0xffff0000),
      onPrimary: Color(0xffffffff),
      onSecondary: Color(0xff000000),
      onSurface: Color(0xffc7c7c7),
      onBackground: Color(0xffffffff),
      onError: Color(0xffffffff),
      brightness: Brightness.dark,
    ),
    buttonColor: const Color(0xff8300ff),
  );

  return darkTheme.copyWith(buttonTheme: buttonTheme);
}

ColorScheme colorScheme = const ColorScheme(
  primary: Color(0xff8300ff),
  primaryVariant: Color(0xff5501c2),
  secondary: Color(0xfffbff00),
  secondaryVariant: Color(0xfff8fe85),
  surface: Color(0xff000000),
  background: Color(0xff202020),
  error: Color(0xffff0000),
  onPrimary: Color(0xffffffff),
  onSecondary: Color(0xff000000),
  onSurface: Color(0xffc7c7c7),
  onBackground: Color(0xffffffff),
  onError: Color(0xffffffff),
  brightness: Brightness.dark,
);

ThemeData darkTheme = ThemeData.from(
  colorScheme: colorScheme,
  textTheme: const TextTheme(),
);
