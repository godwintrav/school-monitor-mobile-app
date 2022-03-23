import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skool_trust/controllers/eventsController.dart';
import 'package:skool_trust/models/events.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/views/auth_screens/login.dart';
import 'package:skool_trust/widgets/StudentInfo.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/bottom_sheet_list.dart';
import 'package:skool_trust/widgets/drawer.dart';
import 'package:skool_trust/utils/appBar.Dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final EventsController eventsController = Get.put(EventsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      backgroundColor: AppColors.appLightGrey,
      appBar: renderapplicationBar("Events"),
      body: Column(
        children: [
          StudentInfo(
            hasBackIcon: true,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(top: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Obx(() {
                      if (eventsController.isLoading.value) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        if (eventsController.hasError.value)
                          return Center(
                            child: Text("Error"),
                          );
                        else
                          return ListView.builder(
                            itemCount: eventsController.eventList.length,
                            itemBuilder: (context, index) {
                              return eventsInfo(context, index,
                                  eventsController.eventList[index]);
                            },
                          );
                      }
                    }),
                  ),

                  //
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar(context, 1),
    );
  }

  Widget eventsInfo(BuildContext context, int index, Event event) {
    return Container(
      padding: EdgeInsets.only(left: 0, right: 0, bottom: 15, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: AppColors.dividerColor,
            height: 5,
            thickness: 1.5,
          ),
          SizedBox(
            height:
                ConvertToMediaQuery().convertHeightToMediaQuery(10, context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              event.name.toUpperCase(),
              style: textStyleContentSM(context,
                  color: AppColors.appLightBlue,
                  fw: FontWeight.w500,
                  fontSize: 12),
            ),
          ),
          SizedBox(
            height:
                ConvertToMediaQuery().convertHeightToMediaQuery(10, context),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Description:",
              style: textStyleContentSM(context,
                  color: Color(0xFF535353), fw: FontWeight.w300, fontSize: 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              event.description,
              style: textStyleContentSM(context,
                  color: Colors.black, fw: FontWeight.w400, fontSize: 12),
            ),
          ),
          SizedBox(
            height: ConvertToMediaQuery().convertHeightToMediaQuery(5, context),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "Date:",
                    style: textStyleContentSM(context,
                        color: Color(0xFF535353),
                        fw: FontWeight.w300,
                        fontSize: 12),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      "",
                      style: textStyleContentSM(context,
                          color: Color(0xFF535353),
                          fw: FontWeight.w300,
                          fontSize: 12),
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    event.date,
                    style: textStyleContentSM(context,
                        color: Colors.black, fw: FontWeight.w400, fontSize: 12),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text(
                      "",
                      style: textStyleContentSM(context,
                          color: Colors.black,
                          fw: FontWeight.w400,
                          fontSize: 12),
                    ))
              ],
            ),
          ),
          if (index == 9)
            SizedBox(
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(15, context),
            ),
          if (index == 9)
            Divider(
              color: AppColors.dividerColor,
              height: 5,
              thickness: 1.5,
            ),
          if (index == 9)
            SizedBox(
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(15, context),
            ),
        ],
      ),
    );
  }

  Container selectTextField(BuildContext context, String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      height: ConvertToMediaQuery().convertHeightToMediaQuery(35, context),
      child: Material(
        color: Colors.white,
        shadowColor: Color(0xFF9BC1DA),
        borderRadius: BorderRadius.circular(10),
        elevation: 2,
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
              Icons.unfold_more_rounded,
              color: Color(0xFF535353),
              size: 24,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 2, color: AppColors().textFieldBorderColor)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                    width: 2, color: AppColors().textFieldBorderColor)),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                color: Color(0xFF535353),
                fontSize: ConvertToMediaQuery()
                    .convertFontSizeToMediaQuery(11, context)),
          ),
        ),
      ),
    );
  }
}
