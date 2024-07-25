import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/notification_screen.dart';
import '../screens/home_screen.dart';
import '../screens/plan_screen.dart';
import '../screens/checklist_screen.dart';
import '../screens/alerts_screen.dart';
import '../screens/shelter_screen.dart';
import '../screens/resources_screen.dart';
import '../screens/community_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Alert Aid',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          _buildDrawerItem(
            context,
            icon: Icons.home,
            text: 'Home',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.list_alt,
            text: 'Emergency Plans',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlanScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.check_box,
            text: 'Disaster Checklists',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChecklistScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.notifications_active,
            text: 'Real-time Alerts',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertsScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.map,
            text: 'Shelter Locator',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShelterScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.school,
            text: 'Educational Resources',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResourcesScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.forum,
            text: 'Community Feedback',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommunityScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.notifications,
            text: 'Notifications',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationsScreen()),
              );
            },
          ),
          _buildDrawerItem(
            context,
            icon: Icons.account_circle,
            text: 'Profile',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(
    BuildContext context, {
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onTap,
    );
  }
}
