import 'package:flutter/material.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

Color appLightBlue = HexColor.fromHex("#0081D5");

class AppColors {
  Color primaryColor = Color(0xFF0081D5);
  Color textFieldBorderColor = Color(0xFF9BC1DA);
  static Color appLightBlue = HexColor.fromHex("#0081D5");
  static Color appLightGrey = HexColor.fromHex("#F3F3F3");
  static Color appDrawerTextColour = HexColor.fromHex("#5F5F5F");
  static Color appLighterGrey = HexColor.fromHex("#DAD9D9");
  static Color bottomNavBgColour = HexColor.fromHex("#F9F9F9");
  static Color bottomNavItemColour = HexColor.fromHex("#9C9CA1");
  static Color appTextTitleDarkGrey = HexColor.fromHex("#535353");
  static Color black = HexColor.fromHex("#000000");
  static Color appRed = HexColor.fromHex("#FF0000");
  static Color appDarkGrey = HexColor.fromHex("#E5E5E5");
  static Color paidFeesColor = Color(0xFF01A03A);
  static Color dividerColor = Color(0xFFEEEEEE);

  static Color white = Colors.white;
}
