import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar renderCustomApplicationBar(text,
    {Widget leading, List<Widget> actions}) {
  if (actions == null) actions = [];
  return AppBar(
    elevation: 1,
    backgroundColor: appLightBlue,
    title: Text(text, style: TextStyle(color: Colors.white)),
    leading: leading,
    actions: actions,
  );
}

AppBar renderapplicationBarTemplate2(text,
    {Widget leading, List<Widget> actions}) {
  if (actions == null)
    actions = [
      Container(
        child: Icon(
          Icons.notifications,
          size: 22,
          color: Colors.white,
        ),
        padding: EdgeInsets.all(2),
      ),
      Container(
        child: Icon(Icons.refresh, color: Colors.white, size: 22,),
        padding: EdgeInsets.all(2),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
      ),
    ];
  return AppBar(
    elevation: 1,
    backgroundColor: appLightBlue,
    title: Text(text, style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 18)),
    leading: leading,
    actions: actions,
  );
}

PreferredSize renderapplicationBar(text,
    {Widget leading, List<Widget> actions}) {
  return PreferredSize(
      child: renderapplicationBarTemplate2(text,
          actions: actions, leading: leading),
      preferredSize: Size.fromHeight(50));
}
