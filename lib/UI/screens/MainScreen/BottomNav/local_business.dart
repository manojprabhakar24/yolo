import 'package:flutter/material.dart';
import '../../View/messagecard.dart';
import '../../../../Model/modal.dart';

class LocalBusinessScreen extends StatefulWidget {
  @override
  _LocalBusinessScreenState createState() => _LocalBusinessScreenState();
}

class _LocalBusinessScreenState extends State<LocalBusinessScreen> {
  // Variable to track the selected container
  int _selectedIndex = 0; // 0 = Paid Business, 1 = Unpaid Business, 2 = Product

  // Fetch the list of paid businesses from the model
  List<Business> paidBusinesses = getPaidBusinesses();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap everything in a SingleChildScrollView
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Three Clickable Containers in the Same Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Paid Business Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0; // Set the selected index to Paid Business
                    });
                  },
                  child: Container(
                    width: 100, // Fixed width
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0 ? Colors.teal : Colors.white, // Change color if selected
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Paid Business',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == 0 ? Colors.white : Colors.black, // Change text color if selected
                        ),
                      ),
                    ),
                  ),
                ),

                // Unpaid Business Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1; // Set the selected index to Unpaid Business
                    });
                  },
                  child: Container(
                    width: 100, // Fixed width
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1 ? Colors.teal : Colors.white, // Change color if selected
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Unpaid Business',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == 1 ? Colors.white : Colors.black, // Change text color if selected
                        ),
                      ),
                    ),
                  ),
                ),

                // Product Container
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 2; // Set the selected index to Product
                    });
                  },
                  child: Container(
                    width: 100, // Fixed width
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: _selectedIndex == 2 ? Colors.teal : Colors.white, // Change color if selected
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Product',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: _selectedIndex == 2 ? Colors.white : Colors.black, // Change text color if selected
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // If 'Paid Business' is selected, show the list of paid businesses
            if (_selectedIndex == 0)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: paidBusinesses.length,
                itemBuilder: (context, index) {
                  final business = paidBusinesses[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    elevation: 2,
                    color: Colors.white, // Set card background color to white
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Title and Row for Rating & Verified Icon
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // 'Paid Business' label
                              Text(
                                'Paid Business',
                                style: TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              // Row for Rating & Verified Icon
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 20,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    business.rating,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.check_circle,
                                    color: Colors.green,
                                    size: 18,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Verified',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Business Name, Description
                          Text(
                            business.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            business.description,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(height: 10),
                          // Row for Offers and Phone Number on the same line
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Offers: ${business.offers}',
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                business.phone,
                                style: TextStyle(fontSize: 14, color: Colors.blue),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

            // New card with message input below the list
            MessageCardWidget(),          ],
        ),
      ),
    );
  }
}
