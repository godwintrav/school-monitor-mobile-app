import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/views/home/home.dart';

class StudentInfo extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  StudentInfo({
    this.hasBackIcon,
  });

  final bool hasBackIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 15),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: -5,
            offset: Offset(-5, -5),
            blurRadius: 30),
        BoxShadow(
            color: Colors.blue[900].withOpacity(0.2),
            spreadRadius: 2,
            offset: Offset(7, 7),
            blurRadius: 20)
      ]),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          flex: 3,
          child: CircleAvatar(
            radius:
                ConvertToMediaQuery().convertHeightToMediaQuery(40, context),
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
        ),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student Name:",
                style: textStyleTitleSM(context,
                    fontSize: 10, fw: FontWeight.w400),
              ),
              Text(
                  authController.studentData.value.firstName +
                      " " +
                      authController.studentData.value.lastName,
                  style: textStyleContentSM(context,
                      fontSize: 12, fw: FontWeight.w500)),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(10, context),
              ),
              Row(
                children: [
                  Text(
                    "Batch:",
                    style: textStyleTitleSM(context,
                        fw: FontWeight.w400, fontSize: 10),
                  ),
                  SizedBox(
                    width: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(90, context),
                  ),
                  Text(
                    "Gender",
                    style: textStyleTitleSM(context,
                        fw: FontWeight.w400, fontSize: 10),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(authController.studentData.value.batch,
                      style: textStyleContentSM(context,
                          fw: FontWeight.w500, fontSize: 12)),
                  SizedBox(
                    width: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(80, context),
                  ),
                  Text(authController.studentData.value.gender,
                      style: textStyleContentSM(context,
                          fw: FontWeight.w500, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
        if (hasBackIcon == true)
          Expanded(
            flex: 1,
            child: IconButton(
              onPressed: () {
                Get.to(() => Home());
              },
              tooltip: "Back to previous screen",
              icon: Icon(Icons.keyboard_arrow_left_rounded,
                  color: Color(0xFFA0A0A0),
                  size: ConvertToMediaQuery()
                      .convertFontSizeToMediaQuery(30, context)),
            ),
          ),
      ]),
    );
  }
}
