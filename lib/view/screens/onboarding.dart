import 'package:flutter/material.dart';
import 'package:noteapp50/utilities/constance/colors.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: appWhite,
            child: const Column(
              children: [
                Spacer(),
                Image(image: AssetImage('assets/images/obEasy.jpg')),
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Text(
                  "Easy to use",
                  style: TextStyle(
                    fontSize: 50,
                  ),
                )),
                Spacer(),
              ],
            ),
          ),
          Container(
              color: appBlue,
              child: const Center(
                  child: Text(
                "Fast & Secured",
                style: TextStyle(
                  color: appWhite,
                  fontSize: 50,
                ),
              )))
        ],
      ),
    );
  }
}
