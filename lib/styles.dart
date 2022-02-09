import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 30.0;
  static const _textSizeDefault = 20.0;
  static const _textSizeSmall = 15.0;
  static final Color _textColorBlue = Colors.blue.shade900;
  static final Color _textColorBlack = Colors.black;
  static final String _fontNameDefault = 'Michroma';

  static final smallText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w600,
      fontSize: _textSizeSmall,
      color: _textColorBlack);

  static final largeText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w600,
      fontSize: _textSizeLarge,
      color: _textColorBlack);

  static final mediumText = TextStyle(
      fontFamily: _fontNameDefault,
      fontWeight: FontWeight.w600,
      fontSize: _textSizeDefault,
      color: _textColorBlack);
}
