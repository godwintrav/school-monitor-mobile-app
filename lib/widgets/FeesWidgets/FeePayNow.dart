import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';

class FeePayNow extends StatelessWidget {
  const FeePayNow({this.key, this.isAllSelected, this.parentOnSelect})
      : super(key: key);
  final Key key;
  final bool isAllSelected;
  final Function parentOnSelect;
  void onChange(bool isSelected) {
    parentOnSelect(isSelected);
  }

  void onButtonPress() {}

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Theme(
            data: ThemeData(unselectedWidgetColor: AppColors.appDarkGrey),
            child: Checkbox(
              value: isAllSelected,
              onChanged: (isSelected) => onChange(isSelected),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            "Select All",
            style: textStyleContentSM(context),
          ),
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: () => Get.changeTheme(ThemeData.dark()),
            child: Text("Pay Now"),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(AppColors.appLightBlue),
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(5))),
          ),
        ),
      ],
    );
  }
}
