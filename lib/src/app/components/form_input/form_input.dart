import 'package:flutter/material.dart';

class FormInput extends StatelessWidget {
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final bool obscureText;

  const FormInput(
      {Key? key,
      required this.label,
      this.userInputController,
      this.onEditingComplete,
      this.focusNode,
      required this.keyboardType,
      required this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
