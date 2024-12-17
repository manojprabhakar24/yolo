import 'package:flutter/material.dart';
import 'messagecard.dart'; // Assuming MessageCardWidget is imported from this file

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'System Update',
      'message': 'A new update is available for your app.',
      'time': '5 minutes ago',
    },
    {
      'title': 'Special Offer',
      'message': 'Get 20% off on your next purchase!',
      'time': '1 hour ago',
    },
    {
      'title': 'New Message',
      'message': 'You have a new message from John Doe.',
      'time': '2 hours ago',
    },
    {
      'title': 'Maintenance Notice',
      'message': 'Scheduled maintenance will occur at midnight.',
      'time': '3 hours ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), // Adjust the AppBar height
        child: AppBar(
          backgroundColor: Colors.white, // Set AppBar background color to white
          automaticallyImplyLeading: false, // Disable the default back button
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 16.0), // Add left and top padding for proper positioning
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
              children: [
                // Company logo aligned to the left
                Image.asset(
                  'assets/images/yolo.png', // Replace with your company logo path
                  width: 70, // Adjust the width of the logo
                  height: 50, // Adjust the height of the logo
                  fit: BoxFit.contain,
                ),
                // Row with Back Icon and Notification Title below the logo
                Padding(
                  padding: const EdgeInsets.only(top: 10.0), // Adjust top margin for spacing
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black), // Back icon
                        onPressed: () {
                          Navigator.pop(context); // Go back to the previous screen
                        },
                      ),
                      Text(
                        'Notifications',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // List of notifications
            ListView.builder(
              itemCount: notifications.length,
              shrinkWrap: true, // Ensures ListView is not expanding unnecessarily
              physics: NeverScrollableScrollPhysics(), // Prevents ListView from scrolling independently
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            notification['title']!,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            notification['message']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            notification['time']!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            // Additional widget below the notification list
            MessageCardWidget(), // Make sure this widget is correctly imported
          ],
        ),
      ),
    );
  }
}
