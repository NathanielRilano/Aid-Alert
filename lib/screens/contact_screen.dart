import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Hotlines'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: [
          _buildContactItem(
            context,
            'Emergency',
            '911',
            icon: Icons.phone,
            hasImage: false,
          ),
          _buildContactItem(
            context,
            "Mayor's Action Center",
            '723-1511',
            imageAsset: 'assets/contacts/mayors.jpg',
          ),
          _buildContactItem(
            context,
            'BFP Batangas City',
            '425-7163 / 301-7996\n0915-602-1984',
            imageAsset: 'assets/contacts/bfp.jpg',
          ),
          _buildContactItem(
            context,
            'PNP Batangas City',
            '723-2030',
            imageAsset: 'assets/contacts/pnp.png',
          ),
          _buildContactItem(
            context,
            'Jesus of Nazareth Hospital',
            '723-4144',
            imageAsset: 'assets/contacts/nazareth.jpg',
          ),
          _buildContactItem(
            context,
            'Batangas Medical Center',
            '723-0911',
            imageAsset: 'assets/contacts/batmc.png',
          ),
          _buildContactItem(
            context,
            'City Disaster Risk Reduction & Management Office (CDRRMO)',
            '702-3902',
            imageAsset: 'assets/contacts/cdrrmo.jpeg',
          ),
          _buildContactItem(
            context,
            "City Social Welfare Dev't",
            '723-2357',
            imageAsset: 'assets/contacts/cswd.png',
          ),
          _buildContactItem(
            context,
            'City Health Office',
            '723-8890',
            imageAsset: 'assets/contacts/city.png',
          ),
          _buildContactItem(
            context,
            'Philippine Red Cross',
            '723-3027',
            imageAsset: 'assets/contacts/redcross.png',
          ),
          _buildContactItem(
            context,
            'Meralco',
            '1622-2847',
            imageAsset: 'assets/contacts/meralco.png',
          ),
          _buildContactItem(
            context,
            'Palakat Batangas City',
            '723-2344',
            imageAsset: 'assets/contacts/pio.jpg',
          ),
        ],
      ),
    );
  }

  Widget _buildContactItem(
    BuildContext context,
    String title,
    String subtitle, {
    String? imageAsset,
    IconData? icon,
    bool hasImage = true,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(12.0),
        leading: hasImage && imageAsset != null
            ? CircleAvatar(
                backgroundImage: AssetImage(imageAsset),
                radius: 24,
              )
            : CircleAvatar(
                backgroundColor: Colors.grey[200],
                child: Icon(icon, color: Colors.red, size: 24),
                radius: 24,
              ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 14.0,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          child: Icon(
            Icons.phone,
            color: Colors.red,
            size: 24,
          ),
        ),
      ),
    );
  }
}
