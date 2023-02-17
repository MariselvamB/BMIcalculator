import 'package:bmi/widgets/appColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Center(
                    child: Image.network(
                  "https://t3.ftcdn.net/jpg/02/23/57/42/360_F_223574261_LmzlzkLtjR0cxcDNvkmr2xHfMU69CheO.jpg",
                  fit: BoxFit.fill,
                )),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => genderPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 150, right: 150, top: 50, bottom: 50),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        alignment: Alignment.center,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.blue,
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 1,
                            color: AppColors.black,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Let's Start",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Sitka Small Semibold',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: AppColors.indigo,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
