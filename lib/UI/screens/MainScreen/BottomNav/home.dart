import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../View/messagecard.dart'; // Importing the table_calendar package

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define a fixed height for the cards
    double cardHeight = 200;
    double cardWidth = double.infinity;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            // Discount Alert Card with Text, Page Indicator, and Avail Now Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Container(
                height: cardHeight,  // Set the height of the card
                child: Material(
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.teal, // Teal color for the card
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView( // Make the contents of the card scrollable
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Discount Alert Text and Page Indicator
                          Row(
                            children: [
                              // Discount Alert Text
                              Text(
                                'Discount Alert',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              // Page Indicator (3 dots)
                              Row(
                                children: [
                                  // Larger and spaced-out dots
                                  CircleAvatar(
                                    radius: 6, // Increased size
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(width: 8), // Increased gap between dots
                                  CircleAvatar(
                                    radius: 6, // Increased size
                                    backgroundColor: Colors.white,
                                  ),
                                  SizedBox(width: 8), // Increased gap between dots
                                  CircleAvatar(
                                    radius: 6, // Increased size
                                    backgroundColor: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Text below the Discount Alert card
                          SizedBox(height: 10),
                          Text(
                            'Exclusive offers on your favorite products.',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),


                          // Avail Now Button (Rectangle Shape and Increased Gap)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              decoration: BoxDecoration(
                                color: Colors.white, // Button color
                                borderRadius: BorderRadius.zero, // Rectangle shape
                              ),
                              child: Text(
                                'Avail Now',
                                style: TextStyle(fontSize: 18, color: Colors.teal),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // New Cluster Details Card (Same size as Discount Card)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Container(
                height: cardHeight,
                width: cardWidth, // Set the height of the card
                child: Material(
                  elevation: 4.0,
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white, // White color for the card
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SingleChildScrollView( // Make the contents of the card scrollable
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Cluster Details Text
                          Text(
                            'Cluster Details',
                            style: TextStyle(
                              fontSize: 12, // Small size for the details
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          // Name of the Cluster Text
                          Text(
                            'Name of the Cluster', // You can replace this with actual data
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 18, // Larger size for the name
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // 2x2 Grid of Containers (White Background, Styled as Buttons)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: GridView.builder(
                shrinkWrap: true,  // Ensures the grid takes only necessary space
                physics: NeverScrollableScrollPhysics(),  // Prevent scrolling within the grid
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,  // Two buttons per row
                  crossAxisSpacing: 10.0,  // Space between columns
                  mainAxisSpacing: 10.0,  // Space between rows
                  childAspectRatio: 3.0,  // Adjust the aspect ratio of each "button"
                ),
                itemCount: 4,
                itemBuilder: (context, index) {
                  // List of button texts
                  List<String> buttonTexts = [
                    'Local Business',
                    'Services',
                    'Offers',
                    'Community News'
                  ];

                  return GestureDetector(
                    onTap: () {
                      // Handle button press actions
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          buttonTexts[index],
                          style: TextStyle(fontSize: 16, color: Colors.teal),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Full-width Event Calendar Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for the event calendar
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TableCalendar widget to show the calendar
                    TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime.utc(2020, 1, 1),
                      lastDay: DateTime.utc(2025, 12, 31),
                      calendarStyle: CalendarStyle(
                        todayDecoration: BoxDecoration(
                          color: Colors.teal,
                          shape: BoxShape.circle,
                        ),
                        selectedDecoration: BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        ),
                      ),
                      headerStyle: HeaderStyle(
                        formatButtonVisible: false, // Hide the format button
                        titleCentered: true, // Center the title
                        headerPadding: EdgeInsets.symmetric(vertical: 10),
                        leftChevronIcon: Icon(Icons.arrow_left, color: Colors.teal),
                        rightChevronIcon: Icon(Icons.arrow_right, color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Message Section Card (With Cluster Info, Business, Council outside TextField)
            MessageCardWidget(),

          ],
        ),
      ),
    );
  }
}
