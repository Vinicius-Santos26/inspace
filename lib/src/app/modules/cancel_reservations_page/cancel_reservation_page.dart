import 'package:flutter/material.dart';
import 'package:inspace/src/app/components/base_page/base_page.dart';
import 'package:inspace/src/app/components/reservation_card/reservation_card.dart';
import 'package:inspace/src/app/notifiers/reservations_notifier.dart';
import 'package:inspace/src/utils/export.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class CancelReservationsPage extends StatefulWidget {
  const CancelReservationsPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CancelReservationsPageState();
  }
}

class _CancelReservationsPageState extends State<CancelReservationsPage> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
        title: 'Cancelar reservas',
        showAppBar: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Consumer<ReservationsNotifier>(builder: (context, notifier, child) {
              return ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 32);
                  },
                  shrinkWrap: true,
                  itemCount: notifier.reservations
                      .where((reservation) => !reservation.checkIn)
                      .toList()
                      .length,
                  itemBuilder: (context, index) {
                    var listItem = notifier.reservations
                        .where((reservation) => !reservation.checkIn)
                        .toList()[index];

                    return MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: ReservationCard(
                          reservationDate: DateFormat("dd/MM/yyyy")
                              .format(listItem.date)
                              .toString(),
                          reservationAmountOfPeople:
                              listItem.amountOfPeople.toString(),
                          reservationCheckIn: listItem.checkIn,
                          onPressed: () =>
                              notifier.cancelReservation(listItem.id),
                          buttonText: cancel,
                        ),
                      ),
                    );
                  });
            })
          ],
        )));
  }
}
