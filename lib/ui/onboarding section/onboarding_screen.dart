import 'package:carbon_app_copy/utilities/constants.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<String> _slides = [
    'assets/images/sliderone.png',
    'assets/images/slidertwo.png',
    'assets/images/sliderthree.png'
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    width: 160,
                    height: 70,
                    child: Image.asset('assets/images/carbon_long_logo.png')),
              ),
              Container(
                height: 300,
                width: double.maxFinite,
                child: PageView.builder(
                    itemCount: _slides.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          SizedBox(
                              width: 250,
                              height: 250,
                              child: Image.asset(_slides[index])),
                        ],
                      );
                    }),
              ),
              Container(
                height: 200,
                width: double.maxFinite,
                child: PageView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                          children: [Text(''), Text('data')],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ccPrimaryColor,
      ),
    );
  }
}
