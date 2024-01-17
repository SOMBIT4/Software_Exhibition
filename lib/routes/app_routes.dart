import 'package:flutter/material.dart';
import 'package:breezybangladesh/presentation/android_large_one_screen/android_large_one_screen.dart';
import 'package:breezybangladesh/presentation/android_large_two_screen/android_large_two_screen.dart';
import 'package:breezybangladesh/presentation/android_large_three_screen/android_large_three_screen.dart';
import 'package:breezybangladesh/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidLargeOneScreen = '/android_large_one_screen';

  static const String androidLargeTwoScreen = '/android_large_two_screen';

  static const String androidLargeThreeScreen = '/android_large_three_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidLargeOneScreen: (context) => AndroidLargeOneScreen(),
    androidLargeTwoScreen: (context) => AndroidLargeTwoScreen(),
    androidLargeThreeScreen: (context) => AndroidLargeThreeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
