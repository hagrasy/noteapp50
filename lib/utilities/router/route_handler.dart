import 'package:flutter/material.dart';
import 'package:noteapp50/view/screens/onboarding.dart';
import 'package:noteapp50/view/screens/signin.dart';
import 'package:noteapp50/view/screens/signup.dart';
import 'package:noteapp50/utilities/router/routes.dart';
import 'package:noteapp50/view/screens/splash.dart';

class RouterHandler {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    
    switch (settings.name) {
      case onBoardingRoute :
        return MaterialPageRoute(builder: (_) => const OnBoardingPage());
      case splashRoute :
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signInRoute :
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                    body: Center(
                  child: Image.asset('assets/images/error.jpg'),
                )));
    }
  }
}
