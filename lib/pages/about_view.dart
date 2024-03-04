import 'package:fitness_app_with_getx/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kThirdColor,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/black/16.jpg'),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            height: Get.height,
            width: Get.width,
            color: kThirdColor.withOpacity(0.7),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(children: [
                const SizedBox(height: 30),
                const Text.rich(
                  TextSpan(
                      text: 'HARD\t',
                      style: TextStyle(
                          fontSize: 30, fontFamily: 'Bebas', letterSpacing: 5),
                      children: [
                        TextSpan(
                          text: 'ELEMENT',
                          style: TextStyle(color: kFirstColor),
                        )
                      ]),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'About You',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                          'We want to know more about you, follow the next \nsteps to complete the information')
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ValueBuilder<int?>(
                    initialValue: 0,
                    builder: (value, updateFn) => Row(
                          children: [
                            OptionWidget(
                                onTap: () => updateFn(0),
                                state: "I'm \nBeginner",
                                detail: 'I have trained several times',
                                enable: value == 0),
                            const SizedBox(width: 10),
                            OptionWidget(
                                onTap: () => updateFn(1),
                                state: "I'm \nExpert",
                                detail: 'I have trained more times',
                                enable: value == 1)
                          ],
                        )),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => Get.back(),
                        child: Text(
                          'Back',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )),
                    TextButton(
                        onPressed: () => Get.back(),
                        child: Container(
                          height: 40,
                          width: 130,
                          decoration: BoxDecoration(
                              color: kFirstColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ))
                  ],
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
