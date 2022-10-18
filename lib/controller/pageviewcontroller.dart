import 'package:EcommerceApp/data/data_source/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/approutes.dart';

abstract class PageviewController extends GetxController {
  next();
  onpahechanged(int i);
}

class PageviewControllerImp extends PageviewController {
  late int currentpage = 0;
  late PageController pageController;
  @override
  next() {
    currentpage++;
    if (currentpage > (onboardinglist.length - 1)) {
      Get.offAllNamed(AppRoute.login);
    } else {
      pageController.animateToPage(currentpage,
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 900));
      update();
    }
  }

  @override
  onpahechanged(int i) {
    currentpage = i;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
