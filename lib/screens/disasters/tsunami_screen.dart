import 'package:flutter/material.dart';

class TsunamiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tsunami Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Tsunami',
              [
                '1. Know if you live in a tsunami-prone area.',
                '2. Create a family emergency plan and practice evacuation routes.',
                '3. Identify the nearest high ground or evacuation center.',
                '4. Prepare an emergency kit with essentials.',
                '5. Secure your home and property.',
              ],
            ),
            _buildSection(
              context,
              'During a Tsunami',
              [
                '1. Move to higher ground immediately.',
                '2. Stay away from the coast and rivers.',
                '3. Follow evacuation orders from authorities.',
                '4. Do not return until authorities say it is safe.',
              ],
            ),
            _buildSection(
              context,
              'After a Tsunami',
              [
                '1. Wait for official “all clear” before returning home.',
                '2. Inspect your property for damage.',
                '3. Avoid touching electrical equipment.',
                '4. Be cautious of contaminated water.',
                '5. Listen to local news for updates and assistance.',
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
