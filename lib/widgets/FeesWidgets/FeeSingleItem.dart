import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';
import 'package:skool_trust/widgets/FeesWidgets/LinkedLabelCheckbox.dart';

class FeeSingleItem extends StatefulWidget {
  FeeSingleItem(
      {this.label,
      this.value,
      this.onChanged,
      this.secondaryLabel,
      this.thirdLabel,
      this.onViewDetailsTapped});
  String label, secondaryLabel, thirdLabel;
  bool value = false;
  Function onChanged;
  Function onViewDetailsTapped;
  @override
  _FeeSingleItemState createState() => _FeeSingleItemState();
}

class _FeeSingleItemState extends State<FeeSingleItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: AppColors.appDarkGrey),
        child: Column(
          children: [
            LinkedLabelCheckbox(
              label: widget.label,
              secondaryLabel: widget.secondaryLabel,
              thirdLabel: widget.thirdLabel,
              value: widget.value,
              onChanged: widget.onChanged,
              onViewDetailsTapped: widget.onViewDetailsTapped,
            ),
            SizedBox(
                height: ConvertToMediaQuery()
                    .convertHeightToMediaQuery(4, context)),
            Divider(
                color: AppColors.appDarkGrey,
                height:
                    ConvertToMediaQuery().convertHeightToMediaQuery(2, context))
          ],
        ),
      ),
    );
  }
}
