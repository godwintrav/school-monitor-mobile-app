import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/controllers/auth_controller.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/home/home.dart';

class ChangePassword extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appLightBlue,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 20, right: 20),
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(80, context),
                    width: ConvertToMediaQuery()
                        .convertWidthToMediaQuery(80, context),
                    child: Image(
                      image: AssetImage("assets/images/logo.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: new Column(
                      children: <Widget>[
                        Text(
                          'SCHOOL MONITOR',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(14, context),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(25, context),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: new Column(
                      children: <Widget>[
                        Text(
                          'UPDATE PASSWORD',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF535353),
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(11, context)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(25, context),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'OLD PASSWORD',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(12, context)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: ConvertToMediaQuery()
                                      .convertFontSizeToMediaQuery(
                                          12, context)),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(5, context),
                  ),
                  Container(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(35, context),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      controller: authController.passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        hintText: "Enter your old password".toUpperCase(),
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF535353),
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(15, context),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'NEW PASSWORD',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(12, context)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: ConvertToMediaQuery()
                                      .convertFontSizeToMediaQuery(
                                          12, context)),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(5, context),
                  ),
                  Container(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(35, context),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      controller: authController.newpasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        hintText: "ENTER YOU NEW PASSWORD",
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF535353),
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(15, context),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'CONFIRM NEW PASSWORD',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(12, context)),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' *',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                  fontSize: ConvertToMediaQuery()
                                      .convertFontSizeToMediaQuery(
                                          12, context)),
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(5, context),
                  ),
                  Container(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(35, context),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      controller: authController.confirmpasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                                width: 1.2,
                                color: AppColors().textFieldBorderColor)),
                        hintText: "CONFIRM YOUR NEW PASSWORD",
                        hintStyle: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF535353),
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(30, context),
                  ),
                  Obx(() {
                    if (authController.isLoading.value)
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    else
                      return Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextButton(
                            onPressed: () async {
                              var result =
                                  await authController.changeUserPassword();
                              // if (result) {
                              //   Get.to(() => Home());
                              // }
                            },
                            style: TextButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                backgroundColor: Color(0xFF0081D5),
                                padding: EdgeInsets.symmetric(horizontal: 0)),
                            child: Text(
                              'UPDATE PASSWORD',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: ConvertToMediaQuery()
                                      .convertFontSizeToMediaQuery(
                                          12, context)),
                            )),
                      );
                  }),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(3, context),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => Home());
                        },
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: AppColors().primaryColor, width: 1.5),
                              borderRadius: BorderRadius.circular(12)),
                          primary: Colors.white,
                        ),
                        child: Text(
                          'BACK TO HOME SCREEN',
                          style: GoogleFonts.poppins(
                              color: Color(0xFF0081D5),
                              fontWeight: FontWeight.w600,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(12, context)),
                        )),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(10, context),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
