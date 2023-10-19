import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DefaultTextFormField extends StatelessWidget {
  DefaultTextFormField({
    super.key,
    required this.textHint,
    required this.label,
    required this.keyBoardType,
    required this.textIcon,
  });

  Widget? textIcon;
  Widget? label;
  String? textHint;
  TextInputType? keyBoardType;
  String? textFormValidator(value) {
    if (value.isEmpty) {
      return 'Please enter your $label';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (keyBoardType == TextInputType.emailAddress &&
        !emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    final phoneRegex = RegExp(r'^(?:[+0]9)?[0-9]{10}$');
    if (keyBoardType == TextInputType.phone && !phoneRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    final nameRegex = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]');
    if (keyBoardType == TextInputType.name && !nameRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: TextFormField(
          keyboardType: keyBoardType,
          decoration: InputDecoration(
            icon: textIcon,
            label: label,
            border: const OutlineInputBorder(),
            hintText: textHint,
          ),
          validator: textFormValidator,
        ),
      )
    ]);
  }
}
