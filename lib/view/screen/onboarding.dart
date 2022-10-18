import 'package:EcommerceApp/controller/pageviewcontroller.dart';
import 'package:EcommerceApp/view/widgets/custompageview.dart';
import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../data/data_source/static/static.dart';
import '../widgets/customeonboardingbutton.dart';
import '../widgets/dot_onboarding.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PageviewControllerImp);

    return Scaffold(
        // appBar: AppBar(),
        body: SafeArea(
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Expanded(flex: 3, child: const CustomPageView()),
          const Spacer(
            flex: 1,
          ),
          Center(
            child: Expanded(
              flex: 1,
              child: Column(
                children: const [Dotgenerator()],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const CutmoOnboardingButton()
        ],
      ),
    ));
  }
}
