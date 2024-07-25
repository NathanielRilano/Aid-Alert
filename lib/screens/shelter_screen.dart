import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ShelterScreen extends StatelessWidget {
  final List<Map<String, dynamic>> shelters = [
    {
      'name': 'Davao Evacuation Center',
      'description': 'Large gymnasium with basic amenities.',
      'address': '123 Main St, Davao City',
      'latitude': 7.0731,
      'longitude': 125.6128,
      'landmarks': 'Near Davao City Hall',
      'contact': '0912 345 6789',
      'capacity': '500 people',
      'image': 'assets/maps/davaoo.jpg',
    },
    {
      'name': 'Manila Evacuation Center',
      'description': 'Community hall with medical assistance available.',
      'address': '456 Elm St, Manila',
      'latitude': 14.5995,
      'longitude': 120.9842,
      'landmarks': 'Beside Manila Central Post Office',
      'contact': '0912 345 6789',
      'capacity': '300 people',
      'image': 'assets/maps/manila.jpg',
    },
    {
      'name': 'Cebu Evacuation Center',
      'description': 'School building converted to shelter.',
      'address': '789 Pine St, Cebu City',
      'latitude': 10.3157,
      'longitude': 123.8854,
      'landmarks': 'Opposite Ayala Center Cebu',
      'contact': '0912 345 6789',
      'capacity': '400 people',
      'image': 'assets/maps/cebu.jpg',
    },
    {
      'name': 'Batangas Evacuation Center',
      'description': 'Town hall with emergency supplies and medical staff.',
      'address': '101 Maple St, Batangas City',
      'latitude': 13.7565,
      'longitude': 121.0583,
      'landmarks': 'Near Batangas Capitol Building',
      'contact': '0912 345 6789',
      'capacity': '600 people',
      'image': 'assets/maps/batangas.jpg',
    },
    {
      'name': 'Batangas Evacuation Center',
      'description': 'Sports complex with large capacity.',
      'address': '202 Oak St, Batangas City',
      'latitude': 13.7565,
      'longitude': 121.0583,
      'landmarks': 'Next to SM City Batangas',
      'contact': '0912 345 6789',
      'capacity': '800 people',
      'image': 'assets/maps/batangas2.jpg',
    },
    {
      'name': 'Batangas Evacuation Center',
      'description': 'Convention center with emergency accommodations.',
      'address': '303 Birch St, Batangas City',
      'latitude': 13.7565,
      'longitude': 121.0583,
      'landmarks': 'Opposite Batangas State University',
      'contact': '0912 345 6789',
      'capacity': '700 people',
      'image': 'assets/maps/batangas3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(title: 'Shelter Locator'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BatangasSheltersScreen(shelters: shelters)),
                  );
                },
                child: Text(
                  'Shelters Near Me',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: shelters.length,
                itemBuilder: (context, index) {
                  return _buildShelterInfoSection(context, screenWidth, shelters[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildShelterInfoSection(BuildContext context, double screenWidth, Map<String, dynamic> shelter) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShelterDetailScreen(shelter: shelter)),
        );
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: screenWidth),
        height: 200.0,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  shelter['image'],
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
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      shelter['name'],
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      shelter['description'],
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            shelter['address'],
                            style: TextStyle(
                              fontSize: screenWidth * 0.035,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Landmarks: ${shelter['landmarks']}',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BatangasSheltersScreen extends StatelessWidget {
  final List<Map<String, dynamic>> shelters;

  BatangasSheltersScreen({required this.shelters});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(title: 'Shelters in Batangas City'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: shelters.length,
          itemBuilder: (context, index) {
            if (shelters[index]['address'].contains('Batangas City')) {
              return _buildShelterInfoSection(context, screenWidth, shelters[index]);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildShelterInfoSection(BuildContext context, double screenWidth, Map<String, dynamic> shelter) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ShelterDetailScreen(shelter: shelter)),
        );
      },
      child: Container(
        constraints: BoxConstraints(maxWidth: screenWidth),
        height: 200.0,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  shelter['image'],
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
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      shelter['name'],
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      shelter['description'],
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on, color: Theme.of(context).primaryColor),
                        SizedBox(width: 8),
                        Text(
                          'Batangas City',
                          style: TextStyle(
                            fontSize: screenWidth * 0.035,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Landmarks: ${shelter['landmarks']}',
                      style: TextStyle(
                        fontSize: screenWidth * 0.035,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShelterDetailScreen extends StatelessWidget {
  final Map<String, dynamic> shelter;

  ShelterDetailScreen({required this.shelter});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageHeight = screenWidth * 0.4;

    return Scaffold(
      appBar: CustomAppBar(title: shelter['name']),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: imageHeight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    shelter['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                shelter['name'],
                style: TextStyle(
                  fontSize: screenWidth * 0.08,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)],
                ),
                child: Text(
                  shelter['description'],
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 16),
              _buildDetailRow(
                context,
                Icons.location_on,
                shelter['address'],
              ),
              SizedBox(height: 8),
              _buildDetailRow(
                context,
                Icons.landscape,
                'Landmarks: ${shelter['landmarks']}',
              ),
              SizedBox(height: 8),
              _buildDetailRow(
                context,
                Icons.phone,
                'Contact: ${shelter['contact']}',
              ),
              SizedBox(height: 8),
              _buildDetailRow(
                context,
                Icons.people,
                'Capacity: ${shelter['capacity']}',
              ),
              SizedBox(height: 8),
              _buildDetailRow(
                context,
                Icons.map,
                'Latitude: ${shelter['latitude']}',
              ),
              SizedBox(height: 8),
              _buildDetailRow(
                context,
                Icons.map,
                'Longitude: ${shelter['longitude']}',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(BuildContext context, IconData icon, String text) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Icon(icon, color: Theme.of(context).primaryColor, size: screenWidth * 0.05),
        SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    );
  }
}