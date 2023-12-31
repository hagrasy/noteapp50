import 'package:flutter/material.dart';
import 'package:noteapp50/utilities/constance/colors.dart';
import 'package:noteapp50/utilities/router/routes.dart';
import 'package:noteapp50/view/widgets/default_button.dart';
import 'package:noteapp50/view/widgets/default_password_field.dart';
import 'package:noteapp50/view/widgets/default_text_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  get passwordFieldKey => null;

  set password(String password) {}
  var emailController = TextEditingController();
  var passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          const Text("Sign In",
              style: TextStyle(
                fontFamily: "assets/fonts/Poppins-Bold.ttf",
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: appBlue,
              )),
          const SizedBox(
            height: 25,
          ),
          DefaultTextFormField(
            controller: emailController,
            label: const Text('Email Address'),
            textHint: 'Enter your email address',
            keyBoardType: TextInputType.emailAddress,
            textIcon: const Icon(Icons.email),
          ),
          PasswordField(
            controller: passController,
            fieldKey: passwordFieldKey,
            helperText: 'No more than 8 characters.',
            labelText: 'Password *',
            onFieldSubmitted: (String value) {
              setState(() {
                password = value;
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          DefaultFloatingButton(
            onPressed: () {},
            buttonLabel: const Text("Sign In", style: TextStyle(fontSize: 18)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            thickness: 1,
            indent: 100,
            endIndent: 100,
            color: appBlue,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "don't have an account?",
                style: TextStyle(fontSize: 17),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, signUpRoute);
                  },
                  child: const Text(
                    "sign up now.",
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Text("Or sign in using:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: appBlue,
              )),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
                child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(right: 0.016),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.asset(
                'assets/images/google.png',
                fit: BoxFit.cover,
              ),
            )),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
                child: Container(
              height: 45,
              width: 45,
              padding: const EdgeInsets.only(right: 0.016),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Image.asset(
                'assets/images/facebook.jpg',
                fit: BoxFit.cover,
              ),
            )),
          ]),
          const Spacer(),
        ],
      ),
    );
  }
}
