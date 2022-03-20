import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appStyles.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';

class LinkedLabelCheckbox extends StatefulWidget {
  LinkedLabelCheckbox(
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
  _LinkedLabelCheckboxState createState() => _LinkedLabelCheckboxState();
}

class _LinkedLabelCheckboxState extends State<LinkedLabelCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Color(0xFFE5E5E5)),
            child: Checkbox(
              value: widget.value,
              onChanged: (bool newValue) {
                setState(() {
                  widget.value = newValue;
                });
                widget.onChanged(newValue);
              },
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label,
                    style: textStyleContentSM(context,
                        fontSize: 14, fw: FontWeight.w400),
                  ),
                  SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(4, context)),
                  Text(
                    widget.secondaryLabel,
                    style: textStyleTitleSM(context,
                        fontSize: 12, fw: FontWeight.w300),
                  ),
                  SizedBox(
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(4, context)),
                  Text(widget.thirdLabel,
                      style: textStyleRed(
                        context,
                        fw: FontWeight.w400,
                        fontSize: 15,
                      )),
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                    top: ConvertToMediaQuery()
                        .convertHeightToMediaQuery(25, context),
                    left: ConvertToMediaQuery()
                        .convertWidthToMediaQuery(25, context)),
                child: InkWell(
                  onTap: () {
                    widget.onViewDetailsTapped();
                  },
                  child: Text(
                    "View Details",
                    style: textStyleBlue(context,
                        fontSize: 11, fw: FontWeight.w400),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// ...

// bool _isSelected = false;

// Widget build(BuildContext context) {
//   return LinkedLabelCheckbox(
//     label: 'Linked, tappable label text',
//     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//     value: _isSelected,
//     onChanged: (bool newValue) {
//       setState(() {
//         _isSelected = newValue;
//       });
//     },
//   );
// }
