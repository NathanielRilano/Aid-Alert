import 'package:flutter/material.dart';
import 'plan_screen.dart';
import 'checklist_screen.dart';
import 'alerts_screen.dart';
import 'shelter_screen.dart';
import 'resources_screen.dart';
import 'community_screen.dart';
import 'contact_screen.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeDashboard(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Alert Aid'),
      drawer: CustomDrawer(),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double screenHeight = constraints.maxHeight;
        double screenWidth = constraints.maxWidth;
        double padding = screenWidth * 0.05;

        return SingleChildScrollView(
          padding: EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(context),
              SizedBox(height: 16.0),
              _buildDisasterInfoSection(context, screenWidth),
              SizedBox(height: screenHeight * 0.02),
              FractionallySizedBox(
                widthFactor: 1.0,
                child: GridView.count(
                  crossAxisCount: screenWidth > 1200
                      ? 6
                      : screenWidth > 900
                          ? 4
                          : screenWidth > 600
                              ? 3
                              : 2,
                  crossAxisSpacing: screenWidth * 0.03,
                  mainAxisSpacing: screenHeight * 0.02,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    _buildFeatureCard(
                      context,
                      title: 'Emergency Plans',
                      icon: Icons.list_alt,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlanScreen()),
                        );
                      },
                    ),
                    _buildFeatureCard(
                      context,
                      title: 'Disaster Checklists',
                      icon: Icons.check_box,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChecklistScreen()),
                        );
                      },
                    ),
                    _buildFeatureCard(
                      context,
                      title: 'Alerts',
                      icon: Icons.notifications_active,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => AlertsScreen()),
                        );
                      },
                    ),
                    _buildFeatureCard(
                      context,
                      title: 'Shelter Locator',
                      icon: Icons.map,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShelterScreen()),
                        );
                      },
                    ),
                    _buildFeatureCard(
                      context,
                      title: 'Educational Resources',
                      icon: Icons.school,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResourcesScreen()),
                        );
                      },
                    ),
                    _buildFeatureCard(
                      context,
                      title: 'Community Feedback',
                      icon: Icons.forum,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CommunityScreen()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            onSubmitted: (query) {
              print('Search query: $query');
            },
          ),
        ),
        SizedBox(width: 8.0),
        IconButton(
          icon: Icon(Icons.phone, color: Colors.red),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactScreen()),
            );
          },
        ),
      ],
    );
  }

  Widget _buildDisasterInfoSection(BuildContext context, double screenWidth) {
    return Container(
      constraints: BoxConstraints(maxWidth: screenWidth),
      height: 150.0,
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/rainfall.jpg',
              fit: BoxFit.cover,
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
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Heavy Rainfall Warning',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  Text(
                    'Weather System: Enhanced Southwest Monsoon (Habagat)\nIssued at: 8:00 AM, 24 July 2024 (Wednesday)',
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'Batangas City',
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
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

  Widget _buildFeatureCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required VoidCallback onTap,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: screenWidth * 0.12,
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: screenWidth * 0.03),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
