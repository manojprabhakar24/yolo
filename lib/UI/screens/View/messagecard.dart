import 'package:flutter/material.dart';

class MessageCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
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
          children: [
            // Centered Text at the top
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Your Message',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
            ),
            SizedBox(height: 16), // Add some space between the text and text field

            // TextField inside the card with icons below
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200], // Background color of the text field
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  children: [
                    // TextField
                    Container(
                      height: 40, // Set the height of the TextField
                      child: TextField(
                        maxLines: null,
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                          hintText: 'Message Modus AI',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Space between TextField and icons

                    // Row for Icons: Attach and Globe on left, Send on right
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side icons
                        Row(
                          children: [
                            // Attach Icon
                            IconButton(
                              onPressed: () {
                                // Attach button action
                              },
                              icon: Icon(Icons.attach_file, color: Colors.grey),
                            ),
                            // Globe Icon
                            IconButton(
                              onPressed: () {
                                // Globe button action
                              },
                              icon: Icon(Icons.language, color: Colors.grey),
                            ),
                          ],
                        ),

                        // Right side Send Icon
                        IconButton(
                          onPressed: () {
                            // Send button action
                          },
                          icon: Icon(Icons.send, color: Colors.teal),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Cluster Info, Business, Council Row (Outside TextField)
            SizedBox(height: 16), // Space before the section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Cluster Info Container
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.info_outline, color: Colors.blueAccent, size: 28),
                        SizedBox(height: 6),
                        Text(
                          'Cluster Info',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),

                // Business Container
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.business, color: Colors.green, size: 28),
                        SizedBox(height: 6),
                        Text(
                          'Business',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),

                // Council Container
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.group, color: Colors.orange, size: 28),
                        SizedBox(height: 6),
                        Text(
                          'Council',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
