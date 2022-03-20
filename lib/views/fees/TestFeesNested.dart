import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/wdiget/fee_item_controller.dart';

class TestFeesNested extends GetView<FeeItemController> {
  @override
  Widget build(BuildContext context) {
    Get.put(FeeItemController());

    return Container(
      child: Obx(() => Column(
            children: [
              Text(controller.counter.toString()),
              Text("Hello"),
            ],
          )),
    );
  }
}
