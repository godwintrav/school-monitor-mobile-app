import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/drawer.dart';

class Guardians extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Teachers"),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return teacherProfileWidget(context);
            },
          )),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 0),
    );
  }

  Container teacherProfileWidget(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 10, right: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.only(top: 5, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height:
                ConvertToMediaQuery().convertHeightToMediaQuery(25, context),
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 0, bottom: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(40, context),
                  child: ClipOval(
                    child: Image.asset(
                      AppUtils.profileImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(20, context),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Full Name:",
                          style: textStyleContentSM(context,
                              color: Color(0xFF535353),
                              fw: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Ameh James Oche",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fw: FontWeight.w400,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Position:",
                          style: textStyleContentSM(context,
                              color: Color(0xFF535353),
                              fw: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "Science Teacher",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fw: FontWeight.w400,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Mobile:",
                          style: textStyleContentSM(context,
                              color: Color(0xFF535353),
                              fw: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Text(
                            "+2348154637282",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fw: FontWeight.w400,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text(
                          "Email:",
                          style: textStyleContentSM(context,
                              color: Color(0xFF535353),
                              fw: FontWeight.w300,
                              fontSize: 12),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Text(
                            "amehoche@gmail.com",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fw: FontWeight.w400,
                                fontSize: 14),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: AppColors.appLightGrey,
            height: 5,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}
