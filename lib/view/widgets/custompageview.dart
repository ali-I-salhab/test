import 'package:EcommerceApp/controller/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/constants/colors.dart';
import '../../data/data_source/static/static.dart';

class CustomPageView extends GetView<PageviewControllerImp> {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PageviewControllerImp());
    return PageView.builder(
        onPageChanged: (val) {
          controller.onpahechanged(val);
        },
        controller: controller.pageController,
        itemCount: onboardinglist.length,
        itemBuilder: (context, i) {
          return Column(
            children: [
              Text(
                onboardinglist[i].title,
                style: const TextStyle(
                    fontSize: 30,
                    color: AppColors.grey,
                    fontFamily: "FuzzyBubbles"),
              ),
              const SizedBox(
                height: 90,
              ),
              Image.asset(
                onboardinglist[i].image,
                width: 200,
                fit: BoxFit.fill,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                onboardinglist[i].body,
                style: const TextStyle(color: AppColors.grey, fontSize: 30),
              ),
            ],
          );
        });
  }
}
