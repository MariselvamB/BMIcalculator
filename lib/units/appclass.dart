import 'package:bmi/units/appColors.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

class AppClass {
  static final GlobalKey<CurvedNavigationBarState> bottomNavigationKey =
      GlobalKey();
  static RulerPickerController rulerPickerController = RulerPickerController();
  static bool isFinish = false;
  static int heightValue = 110;
  static int agecounter = 25;
  static int weigetcounter = 80;

  static int index = 0;
  static Color activeColor = AppColors.blue;
  static Color inActiveColor = AppColors.white;
  static int gender = 0;
}
