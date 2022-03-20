import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';

Widget bottomSheetSearchList(BuildContext context) {
  return Wrap(
    children: [
      Container(
        height: MediaQuery.of(context).size.height * 0.95,
        child: DraggableScrollableSheet(
          initialChildSize: 0.7,
          builder: (BuildContext context, myscrollController) {
            return Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        IconButton(
                            icon: Icon(
                              Icons.close,
                              size: 38,
                              color: AppColors.appLightBlue,
                            ),
                            onPressed: () {
                              Get.back();
                            }),
                        SizedBox(
                          width: ConvertToMediaQuery()
                              .convertWidthToMediaQuery(50, context),
                        ),
                        Text("SELECT SCHOOL",
                            style: textStyleContentSM(context,
                                color: Colors.black,
                                fontSize: 14,
                                fw: FontWeight.w600))
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: AppColors.appLightGrey,
                  ),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(10, context),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(37, context),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.appLightGrey,
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppColors.appLightBlue,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                        hintText: "Search",
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
                        .convertHeightToMediaQuery(15, context),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Schools",
                        style: textStyleContentSM(context,
                            color: Colors.black,
                            fontSize: 14,
                            fw: FontWeight.bold)),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 20),
                      controller: myscrollController,
                      itemCount: 25,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            title: Text(
                          'Dish $index',
                          style: TextStyle(color: Colors.black),
                        ));
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      )
    ],
  );
}
