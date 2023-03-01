// import 'dart:html';

// ignore_for_file: library_private_types_in_public_api

import 'package:bmi/units/appColors.dart';
import 'package:bmi/units/appclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';

class RularWidget extends StatefulWidget {
  final Function(int) onChange;
  RularWidget({Key? key, required this.onChange}) : super(key: key);

  @override
  _RularWidgetState createState() => _RularWidgetState();
}

class _RularWidgetState extends State<RularWidget> {
  @override
  void initState() {
    super.initState();
    AppClass.rulerPickerController = RulerPickerController(value: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Height",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Sitka Small Semibold',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 1.5,
                  color: AppColors.blue,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.height_rounded,
                size: 22,
                color: AppColors.blue,
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            child: Text(
              AppClass.heightValue.toString(),
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
          const SizedBox(height: 20),
          RotatedBox(
            quarterTurns: 3,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey.shade100,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15,
                      spreadRadius: 2),
                  BoxShadow(
                      color: Colors.white,
                      offset: const Offset(-1.0, -1.0),
                      blurRadius: 15,
                      spreadRadius: 2)
                ],
                borderRadius: BorderRadius.circular(30),
              ),
              child: RulerPicker(
                rulerBackgroundColor: AppColors.white,
                rulerScaleTextStyle: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Sitka Small Semibold',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 1,
                  color: AppColors.blue,
                ),
                controller: AppClass.rulerPickerController,
                beginValue: 0,
                endValue: 260,
                initValue: AppClass.heightValue,
                scaleLineStyleList: const [
                  ScaleLineStyle(
                      color: Colors.blue, width: 1.5, height: 30, scale: 0),
                  ScaleLineStyle(
                      color: Colors.blue, width: 1, height: 25, scale: 5),
                  ScaleLineStyle(
                      color: Colors.black38, width: 1, height: 15, scale: -1)
                ],
                onValueChange: (value) {
                  setState(() {
                    AppClass.heightValue = value.toInt();
                  });
                  widget.onChange(AppClass.heightValue);
                },
                width: MediaQuery.of(context).size.width / 1.2,
                height: 80,
                rulerMarginTop: 3,
                marker: Container(
                    width: 6,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
