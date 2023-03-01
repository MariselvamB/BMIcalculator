// ignore_for_file: file_names, camel_case_types

import 'package:bmi/screens/parameters/CalculationPage.dart';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:bmi/widgets/gender_Widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class genderPage extends StatefulWidget {
  const genderPage({super.key});

  @override
  State<genderPage> createState() => genderPageState();
}

class genderPageState extends State<genderPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 70,
              color: AppColors.white,
              alignment: Alignment.center,
              child: const Text(
                "Home",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Sitka Small Semibold',
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  letterSpacing: 2,
                  color: AppColors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: AppColors.white,
              child: Row(
                children: [
                  Container(
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "BMI ",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        letterSpacing: 1.5,
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                  Container(
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Calculater",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                        letterSpacing: 1.5,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1.5.toInt(),
              child: Container(
                color: AppColors.white,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.normal,
                    fontSize: 13,
                    letterSpacing: 1,
                    wordSpacing: 2,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: GenderWidget(
                onChange: (genderVal) {
                  AppClass.gender = genderVal;
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: AppColors.blue,
        backgroundColor: AppColors.white,
        buttonBackgroundColor: AppColors.blue,
        animationCurve: Curves.easeInOut,
        height: 75,
        index: index,
        key: AppClass.bottomNavigationKey,
        items: const [
          Icon(
            Icons.navigate_next_outlined,
            size: 28,
          )
        ],
        onTap: (value) {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.fade, child: CalculationPage()));
        },
      ),
    );
  }
}
