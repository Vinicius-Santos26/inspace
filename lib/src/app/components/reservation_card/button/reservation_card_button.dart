import 'package:flutter/material.dart';

class ReservationCardButton extends StatelessWidget {
  final Function()? onPressed;
  final String buttonText;

  const ReservationCardButton(
      {Key? key, required this.onPressed, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: buttonText == 'Cancelar' ? Colors.red : Colors.blue),
        child: Text(buttonText),
      ),
    );
  }
}
