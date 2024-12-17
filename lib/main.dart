import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:yolo/UI/screens/Signin/Signup/signin.dart';

import 'Database/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes the debug banner
      title: 'YOLO APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthPage(), // Set AuthPage as the home screen
    );
  }
}
