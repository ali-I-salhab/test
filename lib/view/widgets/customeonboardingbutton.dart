import 'package:EcommerceApp/controller/pageviewcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CutmoOnboardingButton extends GetView<PageviewControllerImp> {
  const CutmoOnboardingButton({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller=Get.put(PageviewControllerImp);
    return MaterialButton(
      onPressed: () {
        controller.next();
      },
      child: AnimatedContainer(
        // ignore: sort_child_properties_last
        // ignore: prefer_const_constructors
        duration: Duration(seconds: 1),
        margin: EdgeInsets.only(bottom: 40),
        width: 300,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        // ignore: sort_child_properties_last
        // ignore: prefer_const_constructors
        child: Center(
          child: const Text(
            "Continue ",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
