import 'package:bmi/widgets/appColors.dart';
import 'package:flutter/material.dart';

class CalculationPage extends StatefulWidget {
  CalculationPage({super.key});

  @override
  State<CalculationPage> createState() => _CalculationPageState();
}

class _CalculationPageState extends State<CalculationPage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _incrementCounterAdd();
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    alignment: Alignment.center,
                    width: 100,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: AppColors.transparent,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "+",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Sitka Small Semibold',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 1.5,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _incrementCounterSub();
                  },
                  child: Container(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    alignment: Alignment.center,
                    width: 100,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: AppColors.transparent,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "-",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Sitka Small Semibold',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          letterSpacing: 1.5,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _incrementCounterAdd() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounterSub() {
    setState(() {
      _counter--;
    });
  }
}
