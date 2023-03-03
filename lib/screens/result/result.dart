import 'package:bmi/screens/gender/Gender.dart';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pretty_gauge/pretty_gauge.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({
    super.key,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        color: AppColors.white,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
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
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
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
                    alignment: Alignment.center,
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
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Result",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 2,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                  // CalculateBMI.Describtion!.toString(),
                  "underweight",
                  style: TextStyle(
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
                    ],
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    letterSpacing: 2,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      boxShadow: [
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
                      ],
                      borderRadius: BorderRadius.circular(200),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: PrettyGauge(
                        gaugeSize: 200,
                        minValue: 0,
                        maxValue: 40,
                        segments: [
                          GaugeSegment("underweight", 18.5, AppColors.red),
                          GaugeSegment("underweight", 6.4, AppColors.green),
                          GaugeSegment("underweight", 5, AppColors.orange),
                          GaugeSegment("underweight", 10.1, AppColors.pink)
                        ],
                        valueWidget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                                // CalculateBMI.resultBmi!.toStringAsFixed(1),
                                "18.5",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Sitka Small Semibold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  color: AppColors.black,
                                )),
                            Text(" %",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Sitka Small Semibold',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  letterSpacing: 2,
                                  color: AppColors.black,
                                )),
                          ],
                        ),
                        currentValue:
                            // CalculateBMI.resultBmi!,
                            18.5,
                        needleColor: AppColors.blue,
                        endMarkerStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        startMarkerStyle: const TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: const Text(
                  // CalculateBMI.Describtion.toString(),
                  "you'r e in the underweight range ",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                    color: AppColors.blue,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  // CalculateBMI.FeedBack.toString(),
                  "Eat as much as you want 👍 ",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const genderPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        boxShadow: const [BoxShadow(blurRadius: 2)],
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: const Icon(
                        Icons.home_filled,
                        size: 20,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Share.share(
                          "You are BMI is ${18.5.toStringAsFixed(1)} at Age ${AppClass.agecounter} ");
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        boxShadow: const [BoxShadow(blurRadius: 2)],
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: const Icon(
                        Icons.share_rounded,
                        size: 35,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        boxShadow: const [BoxShadow(blurRadius: 2)],
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: const Icon(
                        Icons.replay_outlined,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
