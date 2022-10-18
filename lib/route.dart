import 'package:EcommerceApp/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

import 'core/constants/approutes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login(),
};
