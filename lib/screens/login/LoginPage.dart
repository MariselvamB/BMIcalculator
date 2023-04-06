// ignore_for_file: file_names

import 'package:bmi/screens/gender/Gender.dart';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      margin: const EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Text(
                        "KING",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Sitka Small Semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: 30,
                            letterSpacing: 1.5,
                            color: AppColors.blue,
                            shadows: [
                              BoxShadow(
                                  color: Colors.blueGrey.shade300,
                                  offset: const Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 2),
                              const BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(-1.0, -1.0),
                                  blurRadius: 15,
                                  spreadRadius: 2)
                            ]),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
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
                  ],
                ),
                Center(
                    child: Image.network(
                  "https://t3.ftcdn.net/jpg/02/23/57/42/360_F_223574261_LmzlzkLtjR0cxcDNvkmr2xHfMU69CheO.jpg",
                  fit: BoxFit.fill,
                  scale: .5,
                )),
                Container(
                  margin: const EdgeInsets.all(30),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  child: SwipeableButtonView(
                    isFinished: AppClass.isFinish,
                    onFinish: () async {
                      await Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const GenderPage()));

                      setState(() {
                        AppClass.isFinish = false;
                      });
                    },
                    onWaitingProcess: () {
                      Future.delayed(const Duration(seconds: 1), () {
                        setState(() {
                          AppClass.isFinish = true;
                        });
                      });
                    },
                    activeColor: AppColors.blue,
                    buttonWidget: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.blue,
                    ),
                    buttonText: "Let's Start",
                    buttontextstyle: const TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 1.5,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
