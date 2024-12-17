import 'package:flutter/material.dart';
import 'package:yolo/UI/screens/View/profile.dart';
import 'BottomNav/community.dart';
import 'BottomNav/home.dart';
import 'BottomNav/local_business.dart';
import 'BottomNav/localcouncil.dart';
import '../View/notification.dart';

class mainscreen extends StatefulWidget {
  @override
  _mainscreenState createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  int _selectedIndex = 1; // Start with Home as the initial screen

  final List<Widget> _pages = [
    CommunityScreen(),
    HomePage(),
    LocalBusinessScreen(),
    LocalCouncilScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset(
              'assets/images/yolo.png',
              width: 70,
              height: 50,
              fit: BoxFit.contain,
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.black),
              onPressed: () {
                // Add navigation for Profile Page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.black),
              onPressed: () {
                // Navigate to the NotificationScreen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              elevation: 4.0,
              borderRadius: BorderRadius.circular(30),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  hintText: 'Search...',
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: _pages[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Local Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Local Council',
          ),
        ],
      ),
    );
  }
}
