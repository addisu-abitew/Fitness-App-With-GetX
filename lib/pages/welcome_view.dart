import 'package:fitness_app_with_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/black/9.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  RichText(
                    text: const TextSpan(
                        text: 'HARD\t',
                        style: TextStyle(
                            fontFamily: 'Bebas',
                            fontSize: 30,
                            letterSpacing: 5),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'ELEMENT',
                              style: TextStyle(color: kFirstColor))
                        ]),
                  ),
                  const Spacer(),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Train and live the new exprience of \nexercising at home',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.ABOUT),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kFirstColor,
                      ),
                      child: const Center(
                        child: Text(
                          'Try Now',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.transparent,
                          border: Border.all(width: 2, color: Colors.white)),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
