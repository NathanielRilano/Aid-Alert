import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          _buildNotification(
            context,
            title: 'Typhoon Agaton Hits Visayas',
            description: 'Typhoon Agaton has made landfall in Visayas, bringing heavy rain and strong winds.',
            date: 'July 24, 2024',
            icon: Icons.cloud,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Earthquake in Mindanao',
            description: 'A magnitude 6.2 earthquake struck Mindanao this morning. Rescue operations are underway.',
            date: 'July 23, 2024',
            icon: Icons.add_location_alt,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Flooding in Metro Manila',
            description: 'Severe flooding in Metro Manila due to continuous rain. Evacuation centers are being set up.',
            date: 'July 22, 2024',
            icon: Icons.water_damage,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Tropical Storm Bising Approaching Luzon',
            description: 'Tropical Storm Bising is expected to hit Luzon soon. Residents should prepare for heavy rains.',
            date: 'July 21, 2024',
            icon: Icons.storm,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Volcanic Eruption in Taal',
            description: 'Taal Volcano erupted, spewing ash into the air. Warning issued for nearby residents.',
            date: 'July 20, 2024',
            icon: Icons.terrain,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Landslide in Baguio City',
            description: 'Heavy rains triggered a landslide in Baguio City. Road closures and damage reported.',
            date: 'July 19, 2024',
            icon: Icons.landscape,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Storm Surge Warning in Cebu',
            description: 'Storm surge warning for Cebu as strong winds and high waves expected.',
            date: 'July 18, 2024',
            icon: Icons.waves,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Tsunami Alert in Davao',
            description: 'Tsunami alert issued for Davao after a powerful underwater earthquake.',
            date: 'July 17, 2024',
            icon: Icons.tsunami,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Heatwave Alert in Mindoro',
            description: 'Intense heatwave in Mindoro with record high temperatures. Stay hydrated.',
            date: 'July 16, 2024',
            icon: Icons.thermostat,
            primaryColor: primaryColor,
          ),
          _buildNotification(
            context,
            title: 'Tropical Cyclone Update',
            description: 'New tropical cyclone forming in the Pacific Ocean. Monitoring its impact.',
            date: 'July 15, 2024',
            icon: Icons.cyclone,
            primaryColor: primaryColor,
          ),
        ],
      ),
    );
  }

  Widget _buildNotification(BuildContext context, {required String title, required String description, required String date, required IconData icon, required Color primaryColor}) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        leading: Icon(
          icon,
          color: primaryColor,
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17.0,
            color: Colors.black87,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black54,
          ),
        ),
        trailing: Text(
          date,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10.0,
          ),
        ),
      ),
    );
  }
}
