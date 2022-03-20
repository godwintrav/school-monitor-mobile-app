import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroSliderController extends GetxController {
  final PageController controller = PageController(initialPage: 0);

  void nextSlide(int index) {
    // use this to animate to the page
    controller.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  void previousSlide(int index) {
    // use this to animate to the page
    controller.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeIn);
  }
}
