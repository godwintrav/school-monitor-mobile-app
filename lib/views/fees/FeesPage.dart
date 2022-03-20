import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/fees_page_controller.dart';

import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/widgets/FeesWidgets/FeeItem.dart';
import 'package:skool_trust/widgets/FeesWidgets/PaidFeeItem.dart';
import 'package:skool_trust/widgets/StudentFeeSummary.dart';
import 'package:skool_trust/widgets/TopBar.dart';
import 'package:skool_trust/widgets/bottomNavigation.dart';
import 'package:skool_trust/widgets/drawer.dart';
import 'package:skool_trust/utils/appBar.Dart';

class FeesPage extends StatelessWidget {
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
          children: [
            StudentFeeSummary(
              amountDue: feesPageController.amountDue,
              currentClass: feesPageController.currentClass,
              currentSession: feesPageController.currentSession,
              currentUserName: feesPageController.currentUserName,
            ),
            Container(
              color: AppColors.appLightGrey,
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(5, context),
            ),
            TopBar(
              titles: ["Due Fees", "Payed Fees"],
              parentAction: (index) {
                feesPageController.onTabBarChange(index);
                print("parent action triggered $index");
                print(feesPageController.selectedTopBarIndex.value);
              },
            ),
            Container(
              child: GetBuilder<FeesPageController>(
                init: FeesPageController(),
                builder: (_) => feesPageController.selectedTopBarIndex.value ==
                        0
                    ? Container(
                        color: AppColors.white,
                        child: FeeItem(
                            feesPageController.getList,
                            (bool val) => feesPageController.onSelectAll(val),
                            (int index, bool isSelected) => feesPageController
                                .onItemSelected(index, isSelected),
                            (int index) =>
                                feesPageController.onItemViewDetail(index)))
                    : Container(
                        color: AppColors.white,
                        child: PaidFeeItem(
                            feesPageController.getPaidList,
                            (bool val) => feesPageController.onSelectAll(val),
                            (int index, bool isSelected) => feesPageController
                                .onItemSelected(index, isSelected),
                            (int index) =>
                                feesPageController.onItemViewDetail(index))),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavigationBar(context, 0),
    );
  }
}
