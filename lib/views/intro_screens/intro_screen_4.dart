import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/views/auth_screens/school_code.dart';

class IntroScreen4 extends StatelessWidget {
  final index;
  final void Function(int) previousSlide;
  const IntroScreen4({Key key, this.index, this.previousSlide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFCFC),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(
              top:
                  ConvertToMediaQuery().convertHeightToMediaQuery(20, context)),
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
                  // Image.asset(
                  //   "assets/images/logo.png",
                  //   height: 40,
                  //   width: 40,
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "School Monitor",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(25, context)),
                      ),
                      Text(
                        'Mobile',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(12, context)),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(50, context),
              ),
              SvgPicture.asset(
                "assets/images/slider_4.svg",
                width: ConvertToMediaQuery()
                    .convertWidthToMediaQuery(130, context),
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(130, context),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(60, context),
              ),
              TextButton(
                  onPressed: () {
                    Get.to(() => Login());
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: Color(0xFF0081D5),
                      padding: EdgeInsets.symmetric(horizontal: 30)),
                  child: Text(
                    'GET STARTED',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: ConvertToMediaQuery()
                            .convertFontSizeToMediaQuery(12, context)),
                  )),
              TextButton(
                  onPressed: () {
                    previousSlide(2);
                  },
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
              new DotsIndicator(
                dotsCount: 4,
                position: index,
                decorator: DotsDecorator(
                    activeColor: Color(0xFF0081D5), color: Color(0xFF9BC1DA)),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
