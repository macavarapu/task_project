

import 'package:flutter/material.dart';
import 'package:task_project/models/flight_model.dart';
import 'package:task_project/widgets/flight_card.dart';

class FlightSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
         backgroundColor: Colors.green[100],
         
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            },
        icon:Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,) ,
        //child: Icon(Icons.arrow_back, color: Colors.white)
        ),
        title: Text("Ezy Travel", style: TextStyle(color: Colors.white)
        ),
        
        
      ),
      body: Column(
        children: [
          // Header Section
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BLR - Bengaluru to DXB - Dubai",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  "Departure: Sat, 23 Mar - Return: Sat, 23 Mar",
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 8),
                Text(
                  "(Round Trip)",
                  style: TextStyle(fontSize: 14, color: Colors.red),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text("Sort")),
                    ElevatedButton(onPressed: () {}, child: Text("Non-Stop")),
                    ElevatedButton(onPressed: () {}, child: Text("Filter")),
                  ],
                ),
              ],
            ),
          ),
          // Flight List
          Expanded(
            child: ListView.builder(
              itemCount: flights.length,
              itemBuilder: (context, index) {
                return FlightCard(flight: flights[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}