import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/DTO/FeeDTO.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/views/auth_screens/school_code.dart';
import 'package:skool_trust/views/fees/FeesPage.dart';
import 'package:skool_trust/widgets/FeesWidgets/FeePayNow.dart';
import 'package:skool_trust/widgets/FeesWidgets/FeeSingleItem.dart';

class FeeItem extends StatefulWidget {
  FeeItem(this.values, this.onSelectAll, this.onSingleItemSelected,
      this.onViewDetailsClicked);

  List<FeeWidgetDTO> values;
  Function onSelectAll;
  Function onSingleItemSelected;
  Function onViewDetailsClicked;
  @override
  _FeeItemState createState() => _FeeItemState();
}

class _FeeItemState extends State<FeeItem> {
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
          FeePayNow(
            isAllSelected: isAllSelected,
            parentOnSelect: (isSelected) => onChange(isSelected),
          ),
          SizedBox(
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(4, context)),
          Divider(
              color: AppColors.appDarkGrey,
              height:
                  ConvertToMediaQuery().convertHeightToMediaQuery(2, context)),
          for (var _item in widget.values)
            if (!_item.paid)
              FeeSingleItem(
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
