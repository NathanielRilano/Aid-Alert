import 'package:flutter/material.dart';

class ElNinoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('El Niño Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before El Niño',
              [
                '1. Check and repair leaks in roofs, walls, and windows.',
                '2. Secure outdoor items that could be blown away by strong winds.',
                '3. Stock up on emergency supplies such as water, food, and medications.',
                '4. Ensure proper drainage around your home.',
                '5. Stay informed about weather updates and alerts.',
              ],
            ),
            _buildSection(
              context,
              'During El Niño',
              [
                '1. Stay indoors during severe weather conditions.',
                '2. Avoid traveling unless absolutely necessary.',
                '3. Monitor weather updates and follow local advice.',
                '4. Prepare for possible power outages.',
              ],
            ),
            _buildSection(
              context,
              'After El Niño',
              [
                '1. Check for and report any damage to local authorities.',
                '2. Avoid wading through floodwater to prevent contamination.',
                '3. Clean and disinfect areas affected by floodwater.',
                '4. Continue to monitor weather conditions for any further alerts.',
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(BuildContext context, String title, List<String> items) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SizedBox(height: 12.0),
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.check_circle, color: Theme.of(context).primaryColor, size: 20.0),
                      SizedBox(width: 12.0),
                      Expanded(
                        child: Text(
                          item,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Colors.black87,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
