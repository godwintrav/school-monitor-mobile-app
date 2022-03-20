import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/home/home.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      image: AssetImage("assets/images/login_image.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: new Column(
                      children: <Widget>[
                        Text(
                          'ECWA SECONDARY SCHOOL MAKURDI',
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
                          'Fill in your username and password to access your school portal account',
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
                          text: 'USERNAME',
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
                        hintText: "ENTER USERNAME",
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
                          text: 'PASSWORD',
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
                        hintText: "ENTER PASSWORD",
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
                        .convertHeightToMediaQuery(35, context),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                            data: ThemeData(
                                unselectedWidgetColor:
                                    AppColors().primaryColor),
                            child: SizedBox(
                              height: 15,
                              width: 15,
                              child: Checkbox(
                                  value: false,
                                  tristate: false,
                                  onChanged: (bool value) {}),
                            )),
                        SizedBox(
                          width: ConvertToMediaQuery()
                              .convertHeightToMediaQuery(10, context),
                        ),
                        Text(
                          'Remember me',
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
                        .convertHeightToMediaQuery(30, context),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => Home());
                        },
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: Color(0xFF0081D5),
                            padding: EdgeInsets.symmetric(horizontal: 0)),
                        child: Text(
                          'LOGIN',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(12, context)),
                        )),
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(3, context),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: AppColors().primaryColor, width: 1.5),
                              borderRadius: BorderRadius.circular(12)),
                          primary: Colors.white,
                        ),
                        child: Text(
                          'BACK',
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
                  Text(
                    'Trouble Signing in? Contact your school admin',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w300,
                        color: Color(0xFFFF0000),
                        fontSize: ConvertToMediaQuery()
                            .convertFontSizeToMediaQuery(10, context)),
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
