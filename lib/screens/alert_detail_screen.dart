import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class AlertDetailScreen extends StatelessWidget {
  final Map<String, String> alert;

  AlertDetailScreen({required this.alert});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppBar(title: 'Alert Description'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: screenWidth * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  alert['image']!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              alert['title']!,
              style: TextStyle(
                fontSize: screenWidth * 0.07,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Time: ${alert['time']}',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Location: ${alert['location']}',
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Text(
                alert['description']!,
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
