import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noteapp50/utilities/constance/colors.dart';
import 'package:noteapp50/utilities/router/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),
        () => Navigator.pushNamed(context, signInRoute));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                child: Text(
                  "Note App",
                  softWrap: true,
                  style: TextStyle(
                    fontFamily: "assets/fonts/Poppins-Bold.ttf",
                    fontSize: 90,
                    fontWeight: FontWeight.w900,
                    color: appBlue,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 220,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.note_add_rounded,
                  size: 100,
                  color: appYellow,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
