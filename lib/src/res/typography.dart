import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  // ignore: member-ordering-extended
  static const TextStyle _text = TextStyle(
    fontFamily: 'Roboto',
  );
  static TextStyle headline1 = _text.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 36 / 32,
  );
  static TextStyle headline2 = _text.copyWith(
    fontWeight: FontWeight.w700,
    fontSize: 24,
    height: 28.8 / 24,
  );
  static TextStyle headline3 = _text.copyWith(
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 24 / 18,
  );
  static TextStyle headline4 = _text.copyWith(
    fontSize: 16,
    height: 1.25,
  );
  static TextStyle headline5 = _text.copyWith(
    fontSize: 14,
    height: 18 / 14,
  );
  TextStyle button = headline5.copyWith(
    fontWeight: FontWeight.w700,
    letterSpacing: 0.3,
  );
}
