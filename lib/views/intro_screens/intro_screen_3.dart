import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:dots_indicator/dots_indicator.dart';

class IntroScreen3 extends StatelessWidget {
  final index;
  final void Function(int) nextSlide;
  final void Function(int) previousSlide;
  const IntroScreen3({Key key, this.index, this.nextSlide, this.previousSlide})
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
                        "SkoolComm",
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
                "assets/images/slider_3.svg",
                width: ConvertToMediaQuery()
                    .convertWidthToMediaQuery(130, context),
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(130, context),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(30, context),
              ),
              Container(
                padding: EdgeInsets.only(
                    left: ConvertToMediaQuery()
                        .convertWidthToMediaQuery(40, context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "As a Student",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF535353),
                          fontSize: ConvertToMediaQuery()
                              .convertFontSizeToMediaQuery(13, context)),
                    ),
                    SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(10, context),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Color(0xFF0081D5),
                          size: 26,
                        ),
                        SizedBox(
                          width: ConvertToMediaQuery()
                              .convertWidthToMediaQuery(10, context),
                        ),
                        Text(
                          "View your details and updates",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF535353),
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(13, context)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(10, context),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check,
                          color: Color(0xFF0081D5),
                          size: 26,
                        ),
                        SizedBox(
                          width: ConvertToMediaQuery()
                              .convertWidthToMediaQuery(10, context),
                        ),
                        Text(
                          "Check results online",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF535353),
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(13, context)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(10, context),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check,
                          color: Color(0xFF0081D5),
                          size: 26,
                        ),
                        SizedBox(
                          width: ConvertToMediaQuery()
                              .convertWidthToMediaQuery(10, context),
                        ),
                        Text(
                          "Keep track of your attendance \nand upcoming events",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300,
                              color: Color(0xFF535353),
                              fontSize: ConvertToMediaQuery()
                                  .convertFontSizeToMediaQuery(13, context)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(20, context),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(60, context),
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
                        previousSlide(1);
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_left,
                            color: Color(0xFF0081D5),
                          ),
                          Text(
                            "BACK",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0081D5),
                                fontSize: ConvertToMediaQuery()
                                    .convertFontSizeToMediaQuery(14, context)),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        nextSlide(3);
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
