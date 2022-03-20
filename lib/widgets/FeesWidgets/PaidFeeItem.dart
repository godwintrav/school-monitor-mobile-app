import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/DTO/FeeDTO.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/auth_screens/school_code.dart';
import 'package:skool_trust/views/fees/FeesPage.dart';
import 'package:skool_trust/widgets/FeesWidgets/FeeSingleItem.dart';
import 'package:skool_trust/widgets/FeesWidgets/LinkedLabelCheckboxGreen.dart';

class PaidFeeItem extends StatefulWidget {
  PaidFeeItem(this.values, this.onSelectAll, this.onSingleItemSelected,
      this.onViewDetailsClicked);

  List<FeeWidgetDTO> values;
  Function onSelectAll;
  Function onSingleItemSelected;
  Function onViewDetailsClicked;
  @override
  _PaidFeeItemState createState() => _PaidFeeItemState();
}

class _PaidFeeItemState extends State<PaidFeeItem> {
  bool isAllSelected = false;

  void onChange(bool isSelected) {
    setState(() {
      isAllSelected = isSelected;
    });
    widget.onSelectAll(isAllSelected);
  }

  void onButtonPress() {
    Navigator.push(
        context,
        CupertinoPageRoute(
          builder: (context) => SchoolCode(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
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
                child: TextButton.icon(
                  onPressed: () => onButtonPress(),
                  icon: Icon(Icons.file_download),
                  label: Text("Receipt"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          AppColors.appLightBlue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(AppColors.white),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(2))),
                ),
              ),
            ],
          ),
          SizedBox(
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(4, context)),
          Divider(
              color: AppColors.appDarkGrey,
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(2, context)),
          for (var _item in widget.values)
            if (_item.paid)
              LinkedLabelCheckboxGreen(
                  label: _item.label,
                  secondaryLabel: _item.secondaryLabel,
                  thirdLabel: _item.thirdLabel,
                  value: isAllSelected,
                  onChanged: (bool val) {
                    widget.onSingleItemSelected(
                        widget.values.indexOf(_item), val);
                  },
                  onViewDetailsTapped: () {
                    widget.onViewDetailsClicked(widget.values.indexOf(_item));
                  })
        ],
      ),
    );
  }
}
