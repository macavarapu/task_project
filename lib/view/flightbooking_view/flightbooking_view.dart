import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task_project/models/flightinspiration_model.dart';
import 'package:task_project/view/fligt_search_view/flight_search_view.dart';

class Flighthomeview extends StatelessWidget {
  const Flighthomeview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
          backgroundColor: Colors.green[100],
        elevation: 0,
        title: Text("Search Flights",
            style: GoogleFonts.lato(color: Colors.black)),
            actions: [
             IconButton(onPressed: (){}, icon: Image.asset("assets/images/Menu.png")),
            ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner Section
            Stack(
              children: [
                
                Image.asset(
                  "assets/images/1.png",
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  left: 16,
                  top: 16,
                  child: Text(
                    "Let’s start your trip",
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            // Flight Search Options
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Tabs
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildTab("Round Trip", true),
                      _buildTab("One Way", false),
                      _buildTab("Multi-city", false),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Input Fields
                  _buildInputField(Icons.flight_takeoff, "From", context),
                  const SizedBox(height: 8),
                  _buildInputField(Icons.flight_land, "To", context),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: _buildDateField("Departure", DateTime.now()),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: _buildDateField("Return",
                            DateTime.now().add(const Duration(days: 7))),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Expanded(
                            child: _buildDropdown("1 Passenger", Icons.person)),
                        const SizedBox(width: 8),
                        Expanded(
                            child: _buildDropdown("Economy Class",
                                Icons.airline_seat_recline_normal)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  FlightSearchScreen()));
                      // Navigate to flight details
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text("Search Flights",
                        style: GoogleFonts.lato(fontSize: 16,color: Colors.white)),
                  ),
                ],
              ),
            ),
            // Travel Inspirations Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Travel Inspirations",
                      style: GoogleFonts.lato(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    height: 350,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: travelInspirations.length,
                      separatorBuilder: (context, _) => const SizedBox(
                        width: 8,
                      ),
                      itemBuilder: (context, index) {
                        final inspiration = travelInspirations[index];
                        return _buildInspirationCard(inspiration);
                      },
                    ),
                  ),
                  SizedBox(height: 20 ,),
                  // const Text(
                  //   'Flight & Hotel Packages',
                  //   style: TextStyle(fontSize: 20, color: Colors.black),
                  // ),
                  Image.asset("assets/images/4.png")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String title, bool selected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.green : Colors.white,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: GoogleFonts.lato(color: selected ? Colors.white : Colors.green),
      ),
    );
  }

  Widget _buildInputField(IconData icon, String hint, BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.green),
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  Widget _buildDateField(String title, DateTime date) {
    return TextField(
      readOnly: true,
      onTap: () {
        // Open date picker
      },
      decoration: InputDecoration(
        labelText: title,
        hintText: DateFormat('EEE, dd MMM - yyyy').format(date),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
Widget _buildDropdown(String hint, IconData icon) {
  return DropdownButtonFormField<String>(
    isExpanded: true, // Ensures the dropdown expands properly.
    decoration: InputDecoration(
      prefixIcon: Icon(icon, color: Colors.green),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    ),
    items: [
      DropdownMenuItem(
        value: hint,
        child: Text(hint),
      ),
    ],
    onChanged: (value) {},
  );
}

  // Widget _buildDropdown(String hint, IconData icon) {
  //   return DropdownButtonFormField(
  //     decoration: InputDecoration(
        
  //       prefixIcon: Icon(icon, color: Colors.green),
  //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
  //     ),
  //     items: [DropdownMenuItem(child: Text(hint))],
  //     onChanged: (value) {},
  //   );
  // }

  Widget _buildInspirationCard(FlightInspiration inspiration) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            inspiration.imageUrl,
            height: 300,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(inspiration.location,
            style: GoogleFonts.lato(fontSize: 14, fontWeight: FontWeight.bold)),
        Text(inspiration.price,
            style: GoogleFonts.lato(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
