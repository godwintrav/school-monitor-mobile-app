import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/fees_page_controller.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/widgets/DividerWiget.dart';
import 'package:skool_trust/widgets/FeesWidgets/FeePayNow.dart';
import 'package:skool_trust/widgets/StudentFeeSummary.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/drawer.dart';
import 'package:skool_trust/utils/appBar.Dart';

class FeeDetail extends StatelessWidget {
  FeeDetail({Key key, this.itemId, this.paid}) : super(key: key);
  final int itemId;
  final bool paid;
  final feesPageController = Get.put(FeesPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      drawer: drawer(context),
      appBar: renderapplicationBar(feesPageController.currentTitle),
      body: Container(
        padding: EdgeInsets.only(
            left: AppUtils.globalPadding, right: AppUtils.globalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StudentFeeSummary(
              amountDue: feesPageController.amountDue,
              currentClass: feesPageController.currentClass,
              currentSession: feesPageController.currentSession,
              currentUserName: feesPageController.currentUserName,
            ),
            Container(
              color: AppColors.appDarkGrey,
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(5, context),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: ConvertToMediaQuery()
                            .convertWidthToMediaQuery(20, context)),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Tution Fees",
                      style: textStyleContentSM(context,
                          fontSize: 14, fw: FontWeight.bold),
                    ),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: (!paid)
                      ? ElevatedButton(
                          onPressed: () =>
                              feesPageController.onPayNowClick(itemId),
                          child: Text("Pay Now"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.appLightBlue),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(1))),
                        )
                      : TextButton.icon(
                          onPressed: () =>
                              feesPageController.onReceiptClick(itemId),
                          icon: Icon(Icons.file_download),
                          label: Text("Receipt"),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.appLightBlue),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  AppColors.white),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(2))),
                        ),
                  flex: 1,
                ),
              ],
            ),
            DividerWidget(),
            Container(
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(40, context),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: ConvertToMediaQuery()
                      .convertWidthToMediaQuery(20, context)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: textStyleTitleSM(context,
                        fontSize: 14, fw: FontWeight.w400),
                  ),
                  Text(feesPageController.getList[itemId].description,
                      style: textStyleContentSM(context,
                          fontSize: 14, fw: FontWeight.w500)),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(10, context),
                  ),
                  Text(
                    !paid ? "Due Date" : "Payed On",
                    style: textStyleTitleSM(context,
                        fontSize: 14, fw: FontWeight.w400),
                  ),
                  Text(feesPageController.getList[itemId].secondaryLabel,
                      style: textStyleContentSM(context,
                          fontSize: 14, fw: FontWeight.w500)),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(25, context),
                  ),
                  Text(
                    "Amount",
                    style: textStyleTitleSM(context,
                        fontSize: 14, fw: FontWeight.w400),
                  ),
                  Text(feesPageController.getList[itemId].thirdLabel,
                      style: paid
                          ? textStyleLightGreen(context,
                              fontSize: 16, fw: FontWeight.w500)
                          : textStyleRed(context,
                              fontSize: 16, fw: FontWeight.w500)),
                  SizedBox(
                    height: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(10, context),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(context, 1),
    );
  }
}
