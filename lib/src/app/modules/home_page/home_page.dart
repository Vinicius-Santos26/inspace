import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:inspace/src/app/components/form_button/form_button.dart';
import 'package:inspace/src/app/modules/cancel_reservations_page/cancel_reservation_page.dart';
import 'package:inspace/src/app/modules/my_reservations/my_reservations_page.dart';
import 'package:inspace/src/app/modules/new_reservation_page/new_reservation_page.dart';

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
                title: const Text("Integrantes - Turma 3SIR"),
                content: SingleChildScrollView(
                    child: Column(
                  children: const [
                    Text("Carolina de Jesus Bonametti RM:85513"),
                    SizedBox(height: 4),
                    Text("Giovanna Benedetti Ferreira RM:85267"),
                    SizedBox(height: 4),
                    Text("Vinicius de Oliveira Santos RM:86082")
                  ],
                )),
                actions: <Widget>[
                  TextButton(
                      onPressed: () => {Navigator.of(context).pop()},
                      child: const Text('Voltar'))
                ]);
          });
    }

    return BasePage(
        title: 'Home',
        showAppBar: true,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FormButton(
                onPressed: () => navigate(const NewReservationPage()),
                buttonText: 'Nova reserva'),
            const SizedBox(height: 16),
            FormButton(
                onPressed: () => navigate(const MyReservationsPage()),
                buttonText: 'Minhas Reservas'),
            const SizedBox(height: 16),
            FormButton(
                onPressed: () => navigate(const CancelReservationsPage()),
                buttonText: 'Cancelar reserva'),
            const Spacer(),
            FormButton(
                onPressed: () {
                  _showDialog();
                },
                buttonText: 'Integrantes'),
            const SizedBox(height: 16),
          ],
        ));
  }
}
