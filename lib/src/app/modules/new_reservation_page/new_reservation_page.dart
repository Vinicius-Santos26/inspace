import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/form_button/form_button.dart';
import 'package:inspace/src/app/modules/new_reservation_page/new_reservation_page_controller.dart';
import 'package:inspace/src/app/notifiers/reservations_notifier.dart';
import 'package:inspace/src/utils/export.dart';
import 'package:intl/intl.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:provider/provider.dart';

import '../../components/form_input/form_input.dart';

class NewReservationPage extends StatefulWidget {
  const NewReservationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _NewReservationPageState();
  }
}

class _NewReservationPageState extends State<NewReservationPage> {
  TextEditingController reservationAmountOfPeopleController =
      TextEditingController();

  final controller = NewReservationPageController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: newReservation,
        showAppBar: true,
        body: SingleChildScrollView(child:
            Consumer<ReservationsNotifier>(builder: (context, notifier, child) {
          return Column(children: [
            Text(controller.reservationDate == null
                ? selectDate
                : DateFormat("dd/MM/yyyy")
                    .format(controller.reservationDate!)
                    .toString()),
            const SizedBox(height: 8),
            FormButton(
                buttonText: select,
                onPressed: () {
                  showDatePicker(
                          context: context,
                          initialDate:
                              controller.reservationDate ?? DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2040))
                      .then((date) {
                    controller.updateReservationDate(date);
                  });
                }),
            const SizedBox(height: 16),
            FormInput(
                label: amountOfPeople,
                keyboardType: TextInputType.number,
                obscureText: false,
                userInputController: reservationAmountOfPeopleController),
            const SizedBox(height: 32),
            FormButton(
              onPressed: () {
                notifier.add(
                    reservationDate: controller.reservationDate,
                    reservationAmountOfPeople:
                        int.parse(reservationAmountOfPeopleController.text));
                Navigator.of(context).pop();
              },
              buttonText: reserve,
            ),
          ]);
        })));
  }
}
