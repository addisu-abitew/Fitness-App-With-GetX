import 'package:fitness_app_with_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: Get.height * 0.55,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/black/14.jpg'),
                    fit: BoxFit.cover,
                  )),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  height: Get.height * 0.55,
                  width: Get.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        kThirdColor,
                        Colors.transparent,
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      const Text.rich(
                        TextSpan(
                            text: 'HARD\t',
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Bebas',
                                letterSpacing: 5),
                            children: [
                              TextSpan(
                                text: 'ELEMENT',
                                style: TextStyle(color: kFirstColor),
                              )
                            ]),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forget Password',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Train and live the new experience of \nexercising at home',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                    TextFormField(),
                    SizedBox(height: 40),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(kFirstColor),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)))),
                        onPressed: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: Get.width * 0.7,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            foregroundColor:
                                MaterialStatePropertyAll(Colors.white),
                            shape:
                                MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(color: kFirstColor),
                            ))),
                        onPressed: () {
                          Get.back();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          width: Get.width * 0.7,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
