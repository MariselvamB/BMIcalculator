import 'package:bmi/screens/gender/Gender.dart';
import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:bmi/widgets/CalBMI.dart';
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
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.all(15),
          color: AppColors.white,
          child: Column(
            children: [
              Container(
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
              Container(
                padding: const EdgeInsets.all(15),
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
              Container(
                padding: const EdgeInsets.all(15),
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
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Text(
                  CalculateBMI.result.toString(),
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
                    color: CalculateBMI.resultBmiColour!,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
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
                            GaugeSegment("underweight", 10.1, AppColors.redd)
                          ],
                          valueWidget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(CalculateBMI.calculateBMI(),
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Sitka Small Semibold',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    letterSpacing: 2,
                                    color: AppColors.black,
                                  )),
                              const Text(" %",
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
                          currentValue: CalculateBMI.resultBmi,
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
              Container(
                padding: const EdgeInsets.only(top: 15),
                margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  CalculateBMI.describtion ?? "This is null",
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                    color: AppColors.blue,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                alignment: Alignment.center,
                child: Text(
                  CalculateBMI.feedBack ?? "This is null",
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 2,
                    color: AppColors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                child: const GenderPage()));
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
                            "You are BMI is${CalculateBMI.result} ${CalculateBMI.resultBmi!.toStringAsFixed(1)} at Age ${AppClass.agecounter} ");
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
      ),
    );
  }
}
