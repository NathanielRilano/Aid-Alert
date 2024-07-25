import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import 'alert_detail_screen.dart';

class AlertsScreen extends StatelessWidget {
  final List<Map<String, String>> alerts = [
    {
      'title': 'Earthquake Warning',
      'description': 'A magnitude 7.1 earthquake has been detected in the Davao region. Residents are advised to stay calm, secure heavy objects, and follow safety protocols. Aftershocks may occur, so stay alert.',
      'time': '3:00 PM, 24 July 2024',
      'location': 'Davao City',
      'image': 'assets/alerts/eqalert.jpg',
    },
    {
      'title': 'Typhoon Alert',
      'description': 'Typhoon Signal No. 3 is in effect for the Luzon area. Heavy rains, strong winds, and possible flooding are expected. Ensure all windows and doors are securely closed, and avoid unnecessary travel.',
      'time': '6:00 AM, 25 June 2024',
      'location': 'Manila',
      'image': 'assets/alerts/typalert.jpg',
    },
    {
      'title': 'Flood Warning',
      'description': 'Severe flooding in the Visayas region due to continuous heavy rains. Roads may be impassable. Evacuate to higher ground, and avoid contact with floodwater as it may be contaminated.',
      'time': '9:00 AM, 26 April 2024',
      'location': 'Cebu City',
      'image': 'assets/alerts/floalert.jpg',
    },
    {
      'title': 'Volcanic Eruption Alert',
      'description': 'Taal Volcano shows signs of imminent eruption. Lava flows and ash clouds are possible. Residents within a 10 km radius should evacuate immediately and stay away from the volcano perimeter.',
      'time': '11:00 AM, 20 March 2024',
      'location': 'Batangas City',
      'image': 'assets/alerts/volalert.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(title: 'Real-time Alerts'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: alerts.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlertDetailScreen(alert: alerts[index]),
                  ),
                );
              },
              child: _buildDisasterInfoSection(context, screenWidth, alerts[index]),
            );
          },
        ),
      ),
    );
  }

  Widget _buildDisasterInfoSection(BuildContext context, double screenWidth, Map<String, String> alert) {
    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth),
      height: 200.0,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                alert['image']!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(screenWidth * 0.04),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    alert['title']!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    alert['description']!,
                    style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: Colors.white,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.access_time, color: Theme.of(context).primaryColor),
                      SizedBox(width: 8),
                      Text(
                        alert['time']!,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                      SizedBox(width: 8),
                      Text(
                        alert['location']!,
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
