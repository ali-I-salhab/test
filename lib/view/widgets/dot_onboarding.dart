import 'package:EcommerceApp/controller/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../data/data_source/static/static.dart';

class Dotgenerator extends StatelessWidget {
  const Dotgenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PageviewControllerImp>(builder: (controller) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(onboardinglist.length, (index) {
          return Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 700),
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(6)),
              margin: EdgeInsets.only(right: 5),
              width: controller.currentpage == index ? 14 : 8,
              height: 8,
            ),
          );
        }),
      );
    });
  }
}
