import 'package:flutter/material.dart';
import 'package:inspace/src/app/model/reservation.dart';

class ReservationsNotifier extends ChangeNotifier {
  final List<Reservation> reservations = [];

  void add({required reservationDate, required reservationAmountOfPeople}) {
    reservations.add(Reservation(
        id: _getNextId(),
        date: reservationDate,
        amountOfPeople: reservationAmountOfPeople,
        checkIn: false));

    notifyListeners();
  }

  void cancelReservation(int id) {
    reservations.removeWhere((reservation) => reservation.id == id);
    notifyListeners();
  }

  void checkIn(int index) {
    reservations[index].checkIn = true;
    notifyListeners();
  }

  int getReservationsLength() {
    return reservations.length;
  }

  int _getNextId() {
    return reservations.length + 1;
  }
}
