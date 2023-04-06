// ignore_for_file: file_names

import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget {
  final Function(int) onChange;

  const GenderWidget({super.key, required this.onChange});

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    AppClass.gender = 1;
                  });
                  widget.onChange(AppClass.gender);
                },
                child: Container(
                  padding: const EdgeInsets.all(30),
                  clipBehavior: Clip.hardEdge,
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppClass.gender == 1
                        ? AppClass.activeColor
                        : AppClass.inActiveColor,
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
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    "assets/boy.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: 100,
                child: const Text(
                  "Male",
                  style: TextStyle(
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
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    AppClass.gender = 2;
                  });
                  widget.onChange(AppClass.gender);
                },
                child: Container(
                  padding: const EdgeInsets.all(30),
                  clipBehavior: Clip.hardEdge,
                  height: 250,
                  width: 150,
                  decoration: BoxDecoration(
                    color: AppClass.gender == 2
                        ? AppClass.activeColor
                        : AppClass.inActiveColor,
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
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Image.asset(
                    "assets/girl.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(top: 20),
                alignment: Alignment.center,
                width: 100,
                child: const Center(
                  child: Text(
                    "Female",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 1.5,
                      color: AppColors.black,
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
}
