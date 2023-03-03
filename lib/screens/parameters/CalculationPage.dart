// ignore_for_file: file_names, non_constant_identifier_names

import 'package:bmi/screens/gender/Gender.dart';
import 'package:bmi/units/appclass.dart';
import 'package:bmi/widgets/Age_widget..dart';
import 'package:bmi/widgets/Rular_Widget.dart';
import 'package:bmi/widgets/Weight_widget.dart';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/screens/result/result.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CalculationPage extends StatefulWidget {
  const CalculationPage({super.key});

  @override
  State<CalculationPage> createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
            size: 15,
          ),
          onPressed: () async {
            await Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.fade, child: const genderPage()));
          },
        ),
        title: const Text(
          "Health Tracker",
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
      body: Container(
        color: AppColors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Age_Widget(
                  onChange: (ageVal) {
                    AppClass.agecounter = ageVal;
                  },
                ),
                WeigetWidget(
                  onChange: (WeigetVal) {
                    AppClass.weigetcounter = WeigetVal;
                  },
                )
              ],
            ),
            RularWidget(
              onChange: (HeightVal) {
                AppClass.heightValue = HeightVal;
              },
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
        index: AppClass.index,
        key: AppClass.bottomNavigationKey,
        items: const [
          Icon(
            Icons.navigate_next_outlined,
            size: 28,
          )
        ],
        onTap: (value) {
          NavigatorPushResultScreen();
        },
      ),
    );
  }

  void NavigatorPushResultScreen() async {
    await Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.fade, child: const ResultPage()));
  }
}
