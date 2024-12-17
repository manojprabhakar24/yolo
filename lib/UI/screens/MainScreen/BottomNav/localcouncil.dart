import 'package:flutter/material.dart';

import '../../View/messagecard.dart';
import '../../../../Model/modal.dart';

class LocalCouncilScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardHeight = 200;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // First Three Containers (Existing Code)
                _buildStaticContainer(screenWidth, 'Login for Council and Hospital API"s'),
                _buildStaticContainer(screenWidth, 'Check your Well-Being'),
                _buildStaticContainer(screenWidth, 'Branding and Community Card Management'),

                SizedBox(height: 20),

                // Discount Alert Card
                _buildDiscountCard(cardHeight),

                SizedBox(height: 16),

                // Dynamic Place Cards using the model
                ...placeCards.map((card) => Column(
                  children: [
                    _buildPlaceCostCard(
                      card.title,
                      card.cost,
                      card.plan,
                      card.description,
                    ),
                    SizedBox(height: 12),
                  ],
                )),

                SizedBox(height: 16),

                // Two Side-by-Side Containers
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // First Container
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Check Loaded Points',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Second Container
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.teal),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Connect to Payments',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 16),

                // Add MessageCardWidget Here
                MessageCardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Static Container Builder
  Widget _buildStaticContainer(double screenWidth, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        width: screenWidth * 0.9,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.teal),
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
      ),
    );
  }

  // Discount Alert Card Builder
  Widget _buildDiscountCard(double cardHeight) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
      child: Container(
        height: cardHeight,
        child: Material(
          elevation: 4.0,
          borderRadius: BorderRadius.circular(20),
          color: Colors.teal,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Discount Alert',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CircleAvatar(radius: 6, backgroundColor: Colors.white),
                        SizedBox(width: 8),
                        CircleAvatar(radius: 6, backgroundColor: Colors.white),
                        SizedBox(width: 8),
                        CircleAvatar(radius: 6, backgroundColor: Colors.white),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Exclusive offers on your favorite products.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Text(
                    'Avail Now',
                    style: TextStyle(fontSize: 18, color: Colors.teal),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Helper method to build dynamic place cards
  Widget _buildPlaceCostCard(String title, String cost, String plan, String description) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
                Text(
                  cost,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.teal),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              plan,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black54),
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
