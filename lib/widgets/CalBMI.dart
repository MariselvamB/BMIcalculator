// ignore_for_file: file_names, non_constant_identifier_names

import 'dart:math';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';

class CalculateBMI {
  static double? resultBmi;
  static String? FeedBack;
  static String? Describtion;
  static Color? resultBmiColour;

  static calculateBMI() {
    resultBmi = (AppClass.weigetcounter / pow(AppClass.heightValue, 100 / 2));
    return resultBmi!.toStringAsFixed(1);
  }

  getSetBmiInterpretation() {
    if (resultBmi! >= 25) {
      resultBmiColour = AppColors.orange;
      Describtion = "you're in the overweight range";
      FeedBack = "Eat wise, drop a size 👍";
    } else if (resultBmi! > 18.5) {
      resultBmiColour = AppColors.green;
      Describtion = "you're in the healthy weight range";
      FeedBack = "Health is Wealth 👍";
    } else if (resultBmi! < 18.5) {
      resultBmiColour = AppColors.red;
      Describtion = "you're in the underweight ";
      FeedBack = "Eat as much as you want 👍";
    } else if (resultBmi! > 30) {
      resultBmiColour = AppColors.pink;
      Describtion = "you're in the obese range";
      FeedBack = "Exercise every day, keep obesity away 👍";
    }
  }
}
