import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/bio/bio.dart';
import 'package:skool_trust/views/events/events.dart';
import 'package:skool_trust/views/fees/FeesPage.dart';
import 'package:skool_trust/views/home/home.dart';

Widget bottomNavigationBar(BuildContext context, int selectedIndex) {
  return BottomNavigationBar(
    backgroundColor: AppColors.bottomNavBgColour,
    onTap: (index) {
      if (index == 0) {
        Get.to(() => Home());
      } else if (index == 1) {
        Get.to(() => EventsPage());
      } else if (index == 2) {
        Get.to(() => Bio());
      }
    },
    currentIndex: selectedIndex,
    items: [
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_rounded,
                size: 24,
                color: AppColors.bottomNavItemColour,
              ),
              Text(
                "Home",
                style: GoogleFonts.poppins(
                    color: AppColors.bottomNavItemColour,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
        label: "",
        activeIcon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.home_rounded,
                size: 24,
                color: AppColors().primaryColor,
              ),
              Text(
                "Home",
                style: GoogleFonts.poppins(
                    color: AppColors().primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
        backgroundColor: AppColors.bottomNavItemColour,
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.event_note_rounded,
                size: 24,
                color: AppColors.bottomNavItemColour,
              ),
              Text(
                "Event",
                style: GoogleFonts.poppins(
                    color: AppColors.bottomNavItemColour,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
        label: "",
        activeIcon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.event_note_rounded,
                size: 22,
                color: AppColors().primaryColor,
              ),
              Text(
                "Event",
                style: GoogleFonts.poppins(
                    color: AppColors().primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
        backgroundColor: AppColors.bottomNavItemColour,
      ),
      BottomNavigationBarItem(
        icon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_rounded,
                size: 22,
                color: AppColors.bottomNavItemColour,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(
                    color: AppColors.bottomNavItemColour,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
        label: "",
        activeIcon: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_rounded,
                size: 22,
                color: AppColors().primaryColor,
              ),
              Text(
                "Profile",
                style: GoogleFonts.poppins(
                    color: AppColors().primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: ConvertToMediaQuery()
                        .convertFontSizeToMediaQuery(10, context)),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
