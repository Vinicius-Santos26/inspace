import 'package:flutter/material.dart';

class NewReservationPageController extends ChangeNotifier {
  DateTime? reservationDate;

  void updateReservationDate(DateTime? date) {
    reservationDate = date;
    notifyListeners();
  }
}
