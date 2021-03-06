import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appString.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/views/auth_screens/change_password.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/widgets/DrawerItem.dart';

Widget drawer(BuildContext context) {
  final AuthController authController = Get.put(AuthController());
  String currentTitle = "Fee";
  String currentUserName = AppUtils.currentUserName;
  String currentClass = AppUtils.currentClass;
  return Drawer(
    child: Container(
      color: AppColors.appLightGrey,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: ListView(padding: EdgeInsets.zero, children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(30, context)),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.pink,
                        radius: 40,
                        child: ClipOval(
                          child: Image.network(
                            "http://school-monitor.goveratech.com/api/student/image/" +
                                authController.studentData.value.id,
                            fit: BoxFit.cover,
                            width: 90.0,
                            height: 90.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: ConvertToMediaQuery()
                            .convertWidthToMediaQuery(10, context),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: ConvertToMediaQuery()
                                .convertHeightToMediaQuery(40, context)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              authController.studentData.value.firstName +
                                  " " +
                                  authController.studentData.value.lastName,
                              style: textStyleContentSM(context,
                                  fontSize: 14,
                                  fw: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            Text(authController.studentData.value.gender,
                                style: textStyleContentSM(context,
                                    fontSize: 14,
                                    fw: FontWeight.w500,
                                    color: Colors.white)),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              renderDrawerItem(context, Icons.lock, "Change Password",
                  action: () {
                Get.to(() => ChangePassword());
              }),
              renderDrawerItem(context, Icons.check_box, "Terms of Use"),
              renderDrawerItem(context, Icons.person, "Privacy Policy"),
              renderDrawerItem(context, Icons.help, "Help"),
            ]),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(),
                      flex: 4,
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10, right: 20),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Icon(Icons.keyboard_arrow_left_rounded,
                              color: AppColors.appDrawerTextColour,
                              size: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(30, context)),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 2,
                      width: ConvertToMediaQuery()
                          .convertWidthToMediaQuery(50, context),
                      color: AppColors.appLighterGrey,
                    ),
                    SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(25, context),
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.offAll(Login());
                        },
                        child: Text(
                          appLogout,
                          style: GoogleFonts.poppins(
                              color: AppColors.appDrawerTextColour,
                              fontWeight: FontWeight.w400,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(14, context)),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
