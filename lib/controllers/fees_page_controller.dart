import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/utils/utils.dart';
import 'package:skool_trust/DTO/FeeDTO.dart';
import 'package:skool_trust/views/fees/FeesDetail.dart';
import 'package:skool_trust/views/fees/due_fees.dart';
import 'package:skool_trust/views/fees/payed_fees.dart';

class FeesPageController extends GetxController {
  String currentUserName = AppUtils.currentUserName;
  String currentClass = AppUtils.currentClass;
  String currentSession = AppUtils.currentSession;
  String amountDue = AppUtils.amountDue;
  String currentTitle = "Fees";
  var selectedTopBarIndex = 0.obs;
  var _list = <FeeWidgetDTO>[
    FeeWidgetDTO(
        "Tuition Fee", "Due Date: 15th March, 2021", "NGN 10,000.00", 1,
        paid: false),
    FeeWidgetDTO(
        "Tuition Fee", "Due Date: 15th March, 2021", "NGN 20,000.00", 2,
        paid: false),
    FeeWidgetDTO(
        "Tuition Fee", "Payed on: 15th March, 2021", "NGN 10,000.00", 3,
        paid: true),
    FeeWidgetDTO(
        "Tuition Fee", "Payed on: 15th March, 2021", "NGN 20,000.00", 4,
        paid: true),
  ].obs;

  void onTabBarChange(index) {
    selectedTopBarIndex.value = index;
    update();
  }

  void onSelectAll(bool selectAll) {
    print("Parent select all");
  }

  void onItemSelected(int index, bool isSelected) {
    print("${index} selected ${isSelected}");
  }

  void onItemViewDetail(int index) {
    print("View detail for ${index}");

    var item = _list[index];

    // Get.to(FeeDetail(
    //   itemId: index,
    //   paid: item.paid,
    // ));
    if (item.paid) {
      Get.to(() => PayedFees());
    } else {
      Get.to(() => DueFees());
    }
  }

  void onPayNowClick(int id) {
    print("id : ${id} clicked");
  }

  void onReceiptClick(int id) {
    print("id : ${id} clicked");
  }

  List<FeeWidgetDTO> get getList => _list;
  List<FeeWidgetDTO> get getPaidList => _list;
}
