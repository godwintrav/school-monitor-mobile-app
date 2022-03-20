import 'package:flutter/material.dart';
import 'package:skool_trust/utils/appColors.dart';
import 'package:skool_trust/utils/convert_mediaQuery.dart';

class TopBar extends StatefulWidget {
  List<String> titles;
  Function parentAction;
  TopBar({titles, parentAction}) {
    this.titles = titles;
    this.parentAction = parentAction;
  }
  @override
  _TopBarState createState() =>
      _TopBarState(parentAction: parentAction, titles: titles);
}

class _TopBarState extends State<TopBar> {
  List<String> titles = [];
  int selectedIndex = 0;
  Function parentAction;

  _TopBarState({titles, widgets, parentAction}) {
    print(titles);
    this.titles = titles;
    this.parentAction = parentAction;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              for (var item in titles)
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = titles.indexOf(item);
                      });
                      if (parentAction != null) {
                        parentAction(selectedIndex);
                      }
                    },
                    child: Container(
                      color: (titles.indexOf(item) == selectedIndex)
                          ? AppColors.white
                          : AppColors.appLightGrey,
                      height: ConvertToMediaQuery()
                          .convertHeightToMediaQuery(40, context),
                      alignment: Alignment.center,
                      child: Text(
                        item,
                        style: TextStyle(color: AppColors.appTextTitleDarkGrey),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
