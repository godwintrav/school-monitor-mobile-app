import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skool_trust/controllers/intro_slider_controller.dart';
import 'package:skool_trust/views/intro_screens/intro_screen_1.dart';
import 'package:skool_trust/views/intro_screens/intro_screen_2.dart';
import 'package:skool_trust/views/intro_screens/intro_screen_3.dart';
import 'package:skool_trust/views/intro_screens/intro_screen_4.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key key}) : super(key: key);

  final introSliderController = Get.put(IntroSliderController());

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: introSliderController.controller,
      children: [
        IntroScreen1(
          index: 0.0,
          nextSlide: introSliderController.nextSlide,
        ),
        IntroScreen2(
          previousSlide: introSliderController.previousSlide,
          nextSlide: introSliderController.nextSlide,
          index: 1.0,
        ),
        IntroScreen3(
          previousSlide: introSliderController.previousSlide,
          nextSlide: introSliderController.nextSlide,
          index: 2.0,
        ),
        IntroScreen4(
          previousSlide: introSliderController.previousSlide,
          index: 3.0,
        ),
      ],
    );
  }
}
