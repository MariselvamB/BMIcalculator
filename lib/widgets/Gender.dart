import 'package:bmi/widgets/appColors.dart';
import 'package:flutter/material.dart';

class genderPage extends StatefulWidget {
  genderPage({super.key});

  @override
  State<genderPage> createState() => _genderPageState();
}

class _genderPageState extends State<genderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
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
                    "Male",
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
              onTap: () {},
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
                    "Female",
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
      ),
    );
  }
}
