// ignore_for_file: file_names

import 'dart:math';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';

class CalculateBMI {
  static double? resultBmi;
  static String? result;
  static String? feedBack;
  static String? describtion;
  static Color? resultBmiColour;

  static calculateBMI() {
    resultBmi = (AppClass.weigetcounter / pow(AppClass.heightValue / 100, 2));
    return resultBmi!.toStringAsFixed(1);
  }

  static getSetBmiInterpretation() {
    if (resultBmi! >= 25) {
      resultBmiColour = AppColors.orange;
      describtion = "you're in the overweight range";
      result = "overweight";
      feedBack = "Eat wise, drop a size 👍";
    } else if (resultBmi! > 18.5) {
      resultBmiColour = AppColors.green;
      describtion = "you're in the healthy weight range";
      result = "healthy weight";
      feedBack = "Health is Wealth 👍";
    } else if (resultBmi! < 18.5) {
      resultBmiColour = AppColors.red;
      describtion = "you're in the underweight ";
      result = "underweight";
      feedBack = "Eat as much as you want 👍";
    } else if (resultBmi! > 30) {
      resultBmiColour = AppColors.redd;
      describtion = "you're in the obese range";
      result = "obese";
      feedBack = "Exercise every day, keep obesity away 👍";
    }
  }
}
