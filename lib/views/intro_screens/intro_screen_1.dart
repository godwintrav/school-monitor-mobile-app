import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/views/auth_screens/school_code.dart';

class IntroScreen1 extends StatelessWidget {
  final index;

  final void Function(int) nextSlide;
  const IntroScreen1({Key key, this.index, this.nextSlide}) : super(key: key);

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
                  ConvertToMediaQuery().convertHeightToMediaQuery(50, context)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Welcome to",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF535353),
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(14, context)),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(10, context),
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
                "assets/images/slider_1.svg",
                width: ConvertToMediaQuery()
                    .convertWidthToMediaQuery(130, context),
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(130, context),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(70, context),
              ),
              Text(
                "Stay on top of all that is \nhappening at your school",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF535353),
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(17, context)),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(100, context),
              ),
              new DotsIndicator(
                dotsCount: 4,
                position: index,
                decorator: DotsDecorator(
                    activeColor: Color(0xFF0081D5), color: Color(0xFF9BC1DA)),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(20, context),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.off(() => Login());
                      },
                      child: Text(
                        "SKIP",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0081D5),
                            fontSize: ConvertToMediaQuery()
                                .convertFontSizeToMediaQuery(14, context)),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        nextSlide(1);
                      },
                      child: Row(
                        children: [
                          Text(
                            "NEXT",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0081D5),
                                fontSize: ConvertToMediaQuery()
                                    .convertFontSizeToMediaQuery(14, context)),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Color(0xFF0081D5),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
