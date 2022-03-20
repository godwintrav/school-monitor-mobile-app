import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';

class DividerWidget extends StatelessWidget {
  DividerWidget({this.height = 2, this.color});
  double height;
  Color color;
  @override
  Widget build(BuildContext context) {
    if (color == null) {
      color = AppColors.appDarkGrey;
    }

    return Divider(
        color: color,
        height:
            ConvertToMediaQuery().convertHeightToMediaQuery(height, context));
  }
}
