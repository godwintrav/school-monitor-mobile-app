import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/widgets/bottom_sheet_list.dart';

class SchoolCode extends StatelessWidget {
  const SchoolCode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                  top: ConvertToMediaQuery()
                      .convertHeightToMediaQuery(20, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(30, context),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: 25,
                        width: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Skooltrust",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: ConvertToMediaQuery()
                                    .convertFontSizeToMediaQuery(15, context)),
                          ),
                          Text(
                            'Mobile',
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                                fontSize: ConvertToMediaQuery()
                                    .convertFontSizeToMediaQuery(8, context)),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(70, context),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(40, context),
                    child: TextField(
                      readOnly: true,
                      onTap: () {
                        Get.bottomSheet(
                          bottomSheetSearchList(context),
                          isDismissible: true,
                          isScrollControlled: true,
                        );
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Icon(
                          Icons.arrow_drop_down_rounded,
                          color: AppColors.appLightBlue,
                          size: 36,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1.5,
                                color: AppColors().textFieldBorderColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                width: 1.5,
                                color: AppColors().textFieldBorderColor)),
                        hintText: "SELECT YOUR SCHOOL",
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF535353),
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(11, context)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(200, context),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => Login());
                      },
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Color(0xFF0081D5),
                          padding: EdgeInsets.symmetric(horizontal: 45)),
                      child: Text(
                        'SEARCH',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      )),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: AppColors().primaryColor),
                              borderRadius: BorderRadius.circular(25)),
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 45)),
                      child: Text(
                        'BACK',
                        style: GoogleFonts.poppins(
                            color: Color(0xFF0081D5),
                            fontWeight: FontWeight.w600,
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      )),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(120, context),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
