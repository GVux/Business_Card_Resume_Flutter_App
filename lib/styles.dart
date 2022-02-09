import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 30.0;
  static const _textSizeDefault = 20.0;
  static const _textSizeSmall = 15.0;
  static const _textSizeVerySmall = 14.0;
  static final Color _textColorIndigo = Colors.indigo;
  static final Color _textColorWhite = Colors.white;
  static final Color _textColorBlack = Colors.black;
  static final String _fontNameDefault = 'Michroma';

  static final smallText = TextStyle(
      fontFamily: _fontNameDefault,
      //fontWeight: FontWeight.w600,
      fontSize: _textSizeSmall,
      color: _textColorBlack);

  static final largeText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w600,
      fontSize: _textSizeLarge,
      color: _textColorBlack);

  static final mediumText = TextStyle(
      fontFamily: _fontNameDefault,
      //fontWeight: FontWeight.w600,
      fontSize: _textSizeDefault,
      color: _textColorBlack);

  static final boldText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.bold,
      fontSize: _textSizeSmall,
      color: _textColorBlack);

  static final verySmallText = TextStyle(
      fontFamily: _fontNameDefault,
      //fontWeight: FontWeight.bold,
      fontSize: _textSizeVerySmall,
      color: _textColorBlack);

  static final verySmallBoldText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.bold,
      fontSize: _textSizeVerySmall,
      color: _textColorBlack);
}
