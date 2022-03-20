import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skool_trust/utils/appBar.Dart';
import 'package:skool_trust/views/fees/FeesPage.dart';

void main() {
  testWidgets("Test AppBar", (WidgetTester tester) async {
    Widget testWidget = new MediaQuery(
        data: new MediaQueryData(),
        child: new MaterialApp(home: new FeesPage()));
    await tester.pumpWidget(testWidget);
    var _appBar = find.byElementType(AppBar);
    expect(_appBar, findsOneWidget);
  });
}
