import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'appColors.dart';
import 'convert_mediaQuery.dart';

TextStyle textStyleTitleSM(BuildContext context,
    {double fontSize = 12, FontWeight fw = FontWeight.normal}) {
  return GoogleFonts.poppins(
      color: AppColors.appTextTitleDarkGrey,
      fontWeight: fw,
      fontSize:
          ConvertToMediaQuery().convertFontSizeToMediaQuery(fontSize, context));
}

TextStyle textStyleContentSM(BuildContext context,
    {double fontSize = 14,
    FontWeight fw = FontWeight.normal,
    Color color = Colors.black}) {
  return GoogleFonts.poppins(
      color: color,
      fontWeight: fw,
      fontSize:
          ConvertToMediaQuery().convertFontSizeToMediaQuery(fontSize, context));
}

TextStyle textStyleRed(BuildContext context,
    {double fontSize = 14, FontWeight fw = FontWeight.normal}) {
  return GoogleFonts.poppins(
      color: AppColors.appRed,
      fontWeight: fw,
      fontSize:
          ConvertToMediaQuery().convertFontSizeToMediaQuery(fontSize, context));
}

TextStyle textStyleBlue(BuildContext context,
    {double fontSize = 14, FontWeight fw = FontWeight.normal}) {
  return GoogleFonts.poppins(
      color: AppColors.appLightBlue,
      fontWeight: fw,
      fontSize:
          ConvertToMediaQuery().convertFontSizeToMediaQuery(fontSize, context));
}

TextStyle textStyleLightGreen(BuildContext context,
    {double fontSize = 14, FontWeight fw = FontWeight.normal}) {
  return GoogleFonts.poppins(
      color: AppColors.paidFeesColor,
      fontWeight: fw,
      fontSize:
          ConvertToMediaQuery().convertFontSizeToMediaQuery(fontSize, context));
}
