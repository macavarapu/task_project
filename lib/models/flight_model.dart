
class Flight {
  final String airline;
  final String departureTime;
  final String arrivalTime;
  final String from;
  final String to;
  final String duration;
  final int stops;
  final int price;

  Flight({
    required this.airline,
    required this.departureTime,
    required this.arrivalTime,
    required this.from,
    required this.to,
    required this.duration,
    required this.stops,
    required this.price,
  });
}
final List<Flight> flights = [
  Flight(
    airline: "Garuda Indonesia",
    departureTime: "14:35",
    arrivalTime: "21:55",
    from: "BLR - Bengaluru",
    to: "DXB - Dubai",
    duration: "4h 30m",
    stops: 2,
    price: 409,
  ),
  Flight(
    airline: "Garuda Indonesia",
    departureTime: "21:55",
    arrivalTime: "14:35",
    from: "DXB - Dubai",
    to: "BLR - Bengaluru",
    duration: "4h 30m",
    stops: 2,
    price: 359,
  ),
    Flight(
    airline: "Garuda Indonesia",
    departureTime: "14:35",
    arrivalTime: "21:55",
    from: "BLR - Bengaluru",
    to: "DXB - Dubai",
    duration: "4h 30m",
    stops: 2,
    price: 409,
  ),
  Flight(
    airline: "Garuda Indonesia",
    departureTime: "21:55",
    arrivalTime: "14:35",
    from: "DXB - Dubai",
    to: "BLR - Bengaluru",
    duration: "4h 30m",
    stops: 2,
    price: 359,
  ),
];
