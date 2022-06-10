import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/reservation_card/button/reservation_card_button.dart';

class ReservationCard extends StatelessWidget {
  final String reservationDate;
  final String reservationAmountOfPeople;
  final bool reservationCheckIn;
  final Function() onPressed;
  final String buttonText;

  const ReservationCard(
      {Key? key,
      required this.reservationDate,
      required this.reservationAmountOfPeople,
      required this.reservationCheckIn,
      required this.onPressed,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Card(
          elevation: 5,
          child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Text('Reserva',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  const SizedBox(height: 8),
                  Text('Data: $reservationDate'),
                  const SizedBox(height: 4),
                  Text('Quantidade de pessoas: $reservationAmountOfPeople'),
                  const SizedBox(height: 8),
                  !reservationCheckIn
                      ? ReservationCardButton(
                          onPressed: onPressed, buttonText: buttonText)
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Check-in:'),
                            Icon(
                              Icons.check_circle_outline_rounded,
                              color: Colors.green,
                              size: 32,
                            )
                          ],
                        )
                ],
              ))),
    );
  }
}
