import 'package:e_commerce/view/screen/auth/login.dart';
import 'package:flutter/material.dart';

import 'core/constants/route.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login : (context) => const Login()
};