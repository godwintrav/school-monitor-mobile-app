import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';

Widget renderDrawerItem(
    BuildContext context, IconData itemIcon, String itemText,
    {Function action}) {
  return InkWell(
    onTap: () {
      if (action != null) {
        action();
      }
    },
    child: Container(
      padding: EdgeInsets.only(
        top: ConvertToMediaQuery().convertWidthToMediaQuery(25, context),
        left: ConvertToMediaQuery().convertWidthToMediaQuery(25, context),
        bottom: ConvertToMediaQuery().convertWidthToMediaQuery(0, context),
      ),
      child: Row(
        children: [
          Icon(
            itemIcon,
            size: 20,
            color: AppColors.appDrawerTextColour,
          ),
          SizedBox(
            width: ConvertToMediaQuery().convertWidthToMediaQuery(25, context),
          ),
          Text(
            itemText,
            style: GoogleFonts.poppins(
                color: AppColors.appDrawerTextColour,
                fontWeight: FontWeight.w500,
                fontSize: ConvertToMediaQuery()
                    .convertFontSizeToMediaQuery(14, context)),
          ),
        ],
      ),
    ),
  );
}
