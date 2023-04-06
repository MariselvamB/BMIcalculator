// ignore_for_file: file_names

import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';

class WeigetWidget extends StatefulWidget {
  final Function(int) onChange;

  const WeigetWidget({
    super.key,
    required this.onChange,
  });

  @override
  State<WeigetWidget> createState() => _WeigetWidgetState();
}

class _WeigetWidgetState extends State<WeigetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.white,
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
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      "Weiget",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.monitor_weight_rounded,
                    size: 20,
                    color: AppColors.blue,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                child: Text(
                  AppClass.weigetcounter.toString(),
                  style: const TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Sitka Small Semibold',
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    letterSpacing: 1.5,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  _incrementWeigetCounterAdd();
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    boxShadow: const [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.indigo,
                    ),
                  ),
                  child: const Text(
                    "+",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _incrementWeigetCounterSub();
                },
                child: Container(
                  margin: const EdgeInsets.all(15),
                  padding: const EdgeInsets.all(5),
                  alignment: Alignment.center,
                  height: 40,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.blue,
                    boxShadow: const [BoxShadow(blurRadius: 2)],
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.indigo,
                    ),
                  ),
                  child: const Text(
                    "-",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _incrementWeigetCounterAdd() {
    setState(() {
      AppClass.weigetcounter++;
    });

    widget.onChange(AppClass.weigetcounter);
  }

  void _incrementWeigetCounterSub() {
    setState(() {
      if (AppClass.weigetcounter > 0) {
        AppClass.weigetcounter--;
      }
    });
  }
}
