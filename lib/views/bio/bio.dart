import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/drawer.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';

class Bio extends StatelessWidget {
  const Bio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Bio"),
      body: Column(
        children: [
          StudentInfo(
            hasBackIcon: true,
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Enrolled",
                            style: textStyleContentSM(context,
                                color: Color(0xFF01A03A),
                                fw: FontWeight.w500,
                                fontSize: 14),
                          ),
                          Text(
                            "09/09/2019",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fw: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(25, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Account Status",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Admission Number",
                                  style: textStyleContentSM(context,
                                      color: Color(0xFF535353),
                                      fw: FontWeight.w300,
                                      fontSize: 12),
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
                                "Active",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF01A03A),
                                    fw: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "GCCM/468",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(25, context),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Due Fees",
                            style: textStyleContentSM(context,
                                color: Color(0xFF535353),
                                fw: FontWeight.w300,
                                fontSize: 12),
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
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(25, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Gender",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Age",
                                  style: textStyleContentSM(context,
                                      color: Color(0xFF535353),
                                      fw: FontWeight.w300,
                                      fontSize: 12),
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
                                "Female",
                                style: textStyleContentSM(context,
                                    color: Colors.black,
                                    fw: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "15",
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
                //SECOND CONTAINER
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.fromLTRB(20, 15, 0, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "STUDENT PROFILE",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fw: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(25, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "First Name",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Jane",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Last Name",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Ameh",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Others Name",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Adah",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Date of Birth",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "20/07/2006",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Gender",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Female",
                                style: textStyleContentSM(context,
                                    color: Colors.black,
                                    fw: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Blood Group",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "O+",
                                style: textStyleContentSM(context,
                                    color: Colors.black,
                                    fw: FontWeight.w400,
                                    fontSize: 14),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //THIRD CONTAINER
                Container(
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.fromLTRB(20, 15, 0, 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "CONTACT INFO",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fw: FontWeight.w400,
                            fontSize: 14),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(25, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Phone",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Nil",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Email",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "Nil",
                                  style: textStyleContentSM(context,
                                      color: Colors.black,
                                      fw: FontWeight.w400,
                                      fontSize: 14),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: ConvertToMediaQuery()
                            .convertHeightToMediaQuery(15, context),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Address",
                                style: textStyleContentSM(context,
                                    color: Color(0xFF535353),
                                    fw: FontWeight.w300,
                                    fontSize: 12),
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                  "North Bank Makurdi, Behind ECWA Church",
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
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 2),
    );
  }
}
