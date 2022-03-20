import 'package:get/get.dart';
import 'package:skool_trust/DTO/FeeDTO.dart';

class FeeItemController extends GetxController {
  List<FeeWidgetDTO> values;
  Function onSelectAll;
  Function onSingleItemSelected;
  Function onViewDetailsClicked;
  String buttonLabel;
  int activeTab;
  int thisTab;
  bool isAllSelected = false;

  void onChange(bool isSelected) {
    if (activeTab == thisTab) {
      isAllSelected = isSelected;
      onSelectAll(isAllSelected);
    }
  }

  void onButtonPress() {}

  var counter = 0.obs;
  void increment() {
    print("incrementing");
    counter++;
    update();
  }
}
