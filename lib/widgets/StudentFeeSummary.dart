import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';

class StudentFeeSummary extends StatelessWidget {
  StudentFeeSummary(
      {this.hasBackIcon,
      this.currentUserName,
      this.currentClass,
      this.currentSession,
      this.amountDue});
  final String currentUserName;
  final String currentClass;
  final String currentSession;
  final bool hasBackIcon;
  final String amountDue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StudentInfo(
          hasBackIcon: true,
        ),
        Container(
          color: AppColors.appLightGrey,
          height: ConvertToMediaQuery().convertHeightToMediaQuery(5, context),
        ),
        Container(
          padding: EdgeInsets.only(top: 20, bottom: 15, left: 20),
          color: Colors.white,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              "STUDENT FEE SUMMARY",
              style: textStyleContentSM(context,
                  fontSize: 14, fw: FontWeight.w400),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Text(
                  "Due Fees",
                  style: textStyleTitleSM(context,
                      fontSize: 14, fw: FontWeight.w300),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "₦ ${amountDue}",
                  style:
                      textStyleRed(context, fontSize: 14, fw: FontWeight.w400),
                ),
              ],
            )
          ]),
        ),
      ],
    );
  }
}
