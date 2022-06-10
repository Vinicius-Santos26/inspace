class Reservation {
  final int id;
  final DateTime date;
  final int amountOfPeople;
  late bool checkIn;

  Reservation(
      {required this.id,
      required this.date,
      required this.amountOfPeople,
      required this.checkIn});
}
