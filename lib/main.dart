import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(DisasterPreparednessApp());
}

class DisasterPreparednessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Aid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
