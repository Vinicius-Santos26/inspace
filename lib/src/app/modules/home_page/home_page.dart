import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:inspace/src/app/components/form_button/form_button.dart';
import 'package:inspace/src/app/modules/cancel_reservations_page/cancel_reservation_page.dart';
import 'package:inspace/src/app/modules/my_reservations/my_reservations_page.dart';
import 'package:inspace/src/app/modules/new_reservation_page/new_reservation_page.dart';
import 'package:inspace/src/utils/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void navigate(Widget page) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    }

    Future<void> _showDialog() async {
      return showDialog<void>(
          barrierDismissible: false,
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: const Text(popUpTitle),
                content: SingleChildScrollView(
                    child: Column(
                  children: const [
                    Text(carolInfo),
                    SizedBox(height: 4),
                    Text(giovannaInfo),
                    SizedBox(height: 4),
                    Text(viniciusInfo)
                  ],
                )),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: const Text(back))
                ]);
          });
    }

    return BasePage(
        title: home,
        showAppBar: true,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormButton(
                onPressed: () => navigate(const NewReservationPage()),
                buttonText: newReservation),
            const SizedBox(height: 16),
            FormButton(
                onPressed: () => navigate(const MyReservationsPage()),
                buttonText: myReservations),
            const SizedBox(height: 16),
            FormButton(
                onPressed: () => navigate(const CancelReservationsPage()),
                buttonText: cancelReservations),
            const Spacer(),
            FormButton(
                onPressed: () {
                  _showDialog();
                },
                buttonText: members),
            const SizedBox(height: 16),
          ],
        ));
  }
}
