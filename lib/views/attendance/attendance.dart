import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/attendanceController.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/attendance/absentAttendance.dart';
import 'package:skool_trust/views/attendance/attendedAttendance.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/drawer.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';

class Attendance extends StatelessWidget {
  final AttendanceController attendanceController =
      Get.put(AttendanceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Attendance"),
      body: Column(
        children: [
          StudentInfo(
            hasBackIcon: true,
          ),
          SizedBox(
            height:
                ConvertToMediaQuery().convertHeightToMediaQuery(30, context),
          ),
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 15, left: 20, right: 20),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(50, context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black.withOpacity(0.4))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "DAYS OPENED",
                        style: textStyleTitleSM(
                          context,
                          fontSize: 14,
                          fw: FontWeight.bold,
                        ),
                      ),
                      Text(
                        attendanceController.attendanceData.value.total
                            .toString(),
                        style: textStyleTitleSM(
                          context,
                          fontSize: 14,
                          fw: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(20, context),
                ),
                InkWell(
                  onTap: () {
                    if (attendanceController
                            .attendanceData.value.attended.length >
                        0) {
                      Get.to(() => AttendedPage(
                            attendedList: attendanceController
                                .attendanceData.value.attended,
                          ));
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(50, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.transparent)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DAYS PRESENT",
                          style: textStyleBlue(
                            context,
                            fontSize: 14,
                            fw: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              attendanceController
                                  .attendanceData.value.attended.length
                                  .toString(),
                              style: textStyleBlue(
                                context,
                                fontSize: 14,
                                fw: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(20, context),
                ),
                InkWell(
                  onTap: () {
                    if (attendanceController
                            .attendanceData.value.absent.length >
                        0) {
                      Get.to(() => AbsentPage(
                            absentList: attendanceController
                                .attendanceData.value.absent,
                          ));
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(50, context),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.transparent)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "DAYS ABSENT",
                          style: textStyleBlue(
                            context,
                            fontSize: 14,
                            fw: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0XFFFFB9B9),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              attendanceController
                                  .attendanceData.value.absent.length
                                  .toString(),
                              style: textStyleBlue(
                                context,
                                fontSize: 14,
                                fw: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
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
