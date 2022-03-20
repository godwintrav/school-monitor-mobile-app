import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/wdiget/fee_item_controller.dart';
import 'package:skool_trust/views/fees/TestFeesNested.dart';

class TestFees extends GetView<FeeItemController> {
  @override
  Widget build(BuildContext context) {
    Get.put(FeeItemController());
    return Container(
      child: Column(
        children: [
          ElevatedButton(
              onPressed: () => controller.increment(), child: Text("increase")),
          TestFeesNested(),
        ],
      ),
    );
  }
}
