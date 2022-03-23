import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/fees_page_controller.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/assessment/assessment.dart';
import 'package:skool_trust/views/attendance/attendance.dart';
import 'package:skool_trust/views/batch_history/batch_history.dart';
import 'package:skool_trust/views/bio/bio.dart';
import 'package:skool_trust/views/fees/FeesPage.dart';
import 'package:skool_trust/views/guardians/guardians.dart';
import 'package:skool_trust/views/report_card/report_card.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/drawer.dart';

class Home extends StatelessWidget {
  final feesPageController = Get.put(FeesPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Home"),
      body: Column(
        children: [
          StudentInfo(hasBackIcon: false),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5),
              color: Colors.white,
              child: ListView(
                children: [
                  CustomListTile(
                    icon: Icons.person_rounded,
                    title: "Bio",
                    route: Bio(),
                  ),
                  // CustomListTile(
                  //   icon: Icons.receipt,
                  //   title: "Fees",
                  //   route: FeesPage(),
                  // ),
                  CustomListTile(
                    icon: Icons.account_circle,
                    title: "Teachers",
                    route: Guardians(),
                  ),
                  CustomListTile(
                    icon: Icons.auto_stories,
                    title: "Assesments",
                    route: AssessmentPage(),
                  ),
                  CustomListTile(
                    icon: Icons.done_all_rounded,
                    title: "Attendance",
                    route: Attendance(),
                  ),
                  // CustomListTile(
                  //   icon: Icons.assignment_ind_rounded,
                  //   title: "Report Cards",
                  //   route: ReportCard(),
                  // ),
                  // CustomListTile(
                  //   icon: Icons.my_library_books_rounded,
                  //   title: "Batch History",
                  //   route: BatchHistory(),
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 0),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key key,
    this.icon,
    this.title,
    this.route,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Widget route;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => route,
            ));
      },
      contentPadding: EdgeInsets.symmetric(horizontal: 0),
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(color: Color(0xFFE5E5E5), width: 1))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon,
                    color: Color(0xFF5F5F5F),
                    size: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(25, context)),
                SizedBox(
                  width: 12,
                ),
                Text(title,
                    style: textStyleContentSM(context,
                        fw: FontWeight.w500, fontSize: 14)),
              ],
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => route,
                    ));
              },
              icon: Icon(Icons.keyboard_arrow_right_rounded,
                  color: AppColors.appDrawerTextColour,
                  size: ConvertToMediaQuery()
                      .convertFontSizeToMediaQuery(30, context)),
            )
          ],
        ),
      ),
    );
  }
}
