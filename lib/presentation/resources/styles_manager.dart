import 'package:flutter/material.dart';
import 'package:flutter_starter_template/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(fontSize: fontSize, fontFamily: fontFamily, color: color, fontWeight: fontWeight);
}

TextStyle getRegularStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.main, AppFontWeight.regular, color);
}

TextStyle getLightStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.main, AppFontWeight.light, color);
}

TextStyle getBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.main, AppFontWeight.bold, color);
}

TextStyle getSemiBoldStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.main, AppFontWeight.semiBold, color);
}

TextStyle getMediumStyle({double fontSize = AppFontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, AppFonts.main, AppFontWeight.medium, color);
}
