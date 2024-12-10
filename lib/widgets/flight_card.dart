import 'package:flutter/material.dart';
import 'package:task_project/models/flight_model.dart';


class FlightCard extends StatelessWidget {
  final Flight flight;

  const FlightCard({Key? key, required this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Image.asset("assets/images/5.png"),
                Text(flight.airline, style: TextStyle(fontSize: 16)),
                Text("AED ${flight.price}", style: TextStyle(fontSize: 16,color: Colors.green)),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(flight.departureTime),
                    Text(flight.from),
                  ],
                ),
                 Image.asset("assets/images/6.png"),
                //Icon(Icons.airplanemode_active, color: Colors.green),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(flight.arrivalTime),
                    Text(flight.to),
                  ],
                ),
              ],
            ),
            Divider(height: 20, thickness: 1),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Cheapest",style: TextStyle(color: Colors.green),)),
                SizedBox(width: 8),
                ElevatedButton(onPressed: () {}, child: Text("Refundable",style: TextStyle(color: Colors.blue),)),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text("Flight Details",style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
