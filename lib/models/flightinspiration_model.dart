class FlightInspiration {
  final String location;
  final String imageUrl;
  final String price;

  FlightInspiration({required this.location, required this.imageUrl, required this.price});
}

final List<FlightInspiration> travelInspirations = [
  FlightInspiration(location: "Saudi Arabia", imageUrl: "assets/images/3.png", price: "AED 867"),
  FlightInspiration(location: "Kuwait", imageUrl: "assets/images/2.png", price: "AED 867"),
];
