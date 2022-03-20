import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/drawer.dart';

class DueFees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Fees"),
      body: Column(
        children: [
          StudentInfo(
            hasBackIcon: true,
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "STUDENT FEE SUMMARY",
                  style: textStyleContentSM(context,
                      color: Colors.black, fw: FontWeight.w400, fontSize: 12),
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(10, context),
                ),
                Row(
                  children: [
                    Text(
                      "Due Fees",
                      style: textStyleContentSM(context,
                          color: Color(0xFF535353),
                          fw: FontWeight.w300,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: ConvertToMediaQuery()
                          .convertWidthToMediaQuery(20, context),
                    ),
                    Text(
                      "₦ 12,000.00",
                      style: textStyleContentSM(context,
                          color: Color(0xFFFF0000),
                          fw: FontWeight.w400,
                          fontSize: 12),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.only(top: 5, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tuition Fee",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fw: FontWeight.w400,
                            fontSize: 12),
                      ),
                      TextButton(
                          onPressed: () {
                            // Get.to(() => Login());
                            Get.changeTheme(ThemeData.dark());
                          },
                          style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: Color(0xFF0081D5),
                              padding: EdgeInsets.symmetric(horizontal: 20)),
                          child: Text(
                            'Pay Now',
                            style: textStyleContentSM(context,
                                color: Colors.white,
                                fw: FontWeight.w500,
                                fontSize: 12),
                          )),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.appLightGrey,
                  height: 5,
                  thickness: 1,
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(25, context),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: textStyleContentSM(context,
                            color: Color(0xFF535353),
                            fw: FontWeight.w300,
                            fontSize: 11),
                      ),
                      Text(
                        "Second Term Tuition Fee",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fw: FontWeight.w400,
                            fontSize: 11),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(20, context),
                      ),
                      Text(
                        "Due Date",
                        style: textStyleContentSM(context,
                            color: Color(0xFF535353),
                            fw: FontWeight.w300,
                            fontSize: 11),
                      ),
                      Text(
                        "15 March, 2021",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fw: FontWeight.w400,
                            fontSize: 11),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(20, context),
                      ),
                      Text(
                        "Amount",
                        style: textStyleContentSM(context,
                            color: Color(0xFF535353),
                            fw: FontWeight.w300,
                            fontSize: 11),
                      ),
                      Text(
                        "₦ 12,000.00",
                        style: textStyleContentSM(context,
                            color: Color(0xFFFF0000),
                            fw: FontWeight.w400,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: AppColors.appLightGrey,
                  height: 5,
                  thickness: 1,
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(10, context),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 0),
    );
  }
}
