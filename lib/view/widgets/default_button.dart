import 'package:flutter/material.dart';
import 'package:noteapp50/utilities/constance/colors.dart';

// ignore: must_be_immutable
class DefaultFloatingButton extends StatelessWidget {
  DefaultFloatingButton({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
  });
  Widget buttonLabel;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: appBlue,
      label: buttonLabel,
      onPressed: onPressed,
    );
  }
}


// const Text(
//           "Sign Up",
//           style: TextStyle(fontSize: 18),