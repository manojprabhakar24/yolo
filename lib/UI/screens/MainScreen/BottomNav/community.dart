import 'package:flutter/material.dart';

import '../../View/messagecard.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TextField to Post Something with Profile and Send Icon
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  // Background container for the TextField
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200], // Background color of TextField
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                    child: TextField(
                      maxLines: null, // Allow multiple lines
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                        hintText: 'Post Something..',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 50, right: 50), // Adjust content padding
                      ),
                    ),
                  ),

                  // Profile Icon positioned on the left inside the TextField
                  Positioned(
                    left: 10,
                    top: 10,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/profile.jpg'), // Profile avatar
                    ),
                  ),

                  // Send Icon positioned on the right inside the TextField
                  Positioned(
                    right: 10,
                    top: 10,
                    child: IconButton(
                      onPressed: () {
                        // Send button action
                      },
                      icon: Icon(Icons.send, color: Colors.teal),
                    ),
                  ),
                ],
              ),
            ),

            // Row with two Containers and text 'AI Bot' and 'Pattern Forecast'
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // AI Bot Container with Expanded to make equal width
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal, width: 2), // Add teal border
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        'AI Bot',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(width: 16), // Space between the containers

                  // Pattern Forecast Container with Expanded to make equal width
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal, width: 2), // Add teal border
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        ' Forecast',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Post Card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                color: Colors.white, // Set the background color of the card to white
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Profile and Post Information (Name, Date, Time)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          // Profile Icon
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('assets/images/profile.jpg'), // Profile avatar
                          ),
                          SizedBox(width: 10),
                          // Name and Posted on date and time
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name', // Replace with actual name
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Posted on 15th Dec, 2024 at 10:00 AM', // Replace with actual date and time
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Post Image and Details
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/frag.jpg'), // Replace with actual image
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Fragrance is the art of creating captivating scents that evoke emotions, memories, and a sense of well-being',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ),

                    // Small Like and Comment Icon with Numbers
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.thumb_up_alt_outlined, color: Colors.grey, size: 20),
                              SizedBox(width: 5),
                              Text('120', style: TextStyle(fontSize: 16, color: Colors.teal)),
                            ],
                          ),
                          SizedBox(width: 16),
                          Row(
                            children: [
                              Icon(Icons.comment_outlined, color: Colors.grey, size: 20),
                              SizedBox(width: 5),
                              Text('45', style: TextStyle(fontSize: 16, color: Colors.teal)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // Divider
                    Divider(
                      color: Colors.grey,
                      height: 1,
                      indent: 16,
                      endIndent: 16,
                    ),

                    // Like, Comment, and Share Icons
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              // Like button action
                            },
                            icon: Icon(Icons.thumb_up_alt_outlined, color: Colors.teal),
                          ),
                          IconButton(
                            onPressed: () {
                              // Comment button action
                            },
                            icon: Icon(Icons.comment_outlined, color: Colors.teal),
                          ),
                          IconButton(
                            onPressed: () {
                              // Share button action
                            },
                            icon: Icon(Icons.share_outlined, color: Colors.teal),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MessageCardWidget(),
          ],
        ),
      ),
    );
  }
}
