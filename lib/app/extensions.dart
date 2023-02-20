import 'package:flutter/material.dart';
import 'package:flutter_starter_template/app/constants.dart';

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return Constants.ZERO;
    }
    return this!;
  }
}

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return Constants.EMPTY;
    }
    return this!;
  }
}

extension HexColor on String {
  Color toColor() {
    String hexColorString = replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
