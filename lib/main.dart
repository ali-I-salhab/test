import 'package:EcommerceApp/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            textTheme: const TextTheme(
                displayLarge: TextStyle(
                    fontSize: 20,
                    fontFamily: 'FuzzyBubbles',
                    fontWeight: FontWeight.bold))),
        home: OnBoarding(),
        routes: routes,
      ),
    );
  }
}
