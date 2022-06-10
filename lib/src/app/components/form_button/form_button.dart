import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class FormButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  const FormButton(
      {Key? key, required this.onPressed, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kIsWeb ? 80 : double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}
