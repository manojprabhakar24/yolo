import 'package:flutter/material.dart';
import 'package:yolo/UI/screens/Signin/Signup/signup.dart';

import 'login.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bglogin.jpg'), // Replace with your background image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Subtle Gradient overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal.withOpacity(0.6), // Semi-transparent teal
                  Colors.greenAccent.withOpacity(0.3), // Semi-transparent green
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          // Page Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Company Logo with white background
                Container(
                  padding: EdgeInsets.all(16), // Space around the logo
                  decoration: BoxDecoration(
                    color: Colors.white, // White background
                    borderRadius: BorderRadius.circular(20), // Rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4), // Shadow effect
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/yolo.png', // Replace with your logo image path
                    width: 150, // Adjust the width of the logo
                  ),
                ),
                SizedBox(height: 40),
                // Sign In Button
                SizedBox(
                  width: 250, // Increased button width
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to Log In screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal, // Matches gradient theme
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                SizedBox(height: 20),
                // Sign Up Button
                SizedBox(
                  width: 250, // Increased button width
                  child:  ElevatedButton(
                    onPressed: () {
                      // Navigate to Sign Up screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Teal color for Sign Up
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
