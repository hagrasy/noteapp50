import 'package:flutter/material.dart';
import 'package:noteapp50/view/screens/signin.dart';
import 'package:noteapp50/view/screens/signup.dart';
import 'package:noteapp50/utilities/router/routes.dart';

class RouterHandler {
  static Route<dynamic> generateRoute (RouteSettings settings) {
    
    switch (settings.name) {
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
