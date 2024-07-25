import 'package:flutter/material.dart';

class EarthquakeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before an Earthquake',
              [
                '1. Secure heavy furniture and appliances to the wall.',
                '2. Create an emergency kit with food, water, and medical supplies.',
                '3. Identify safe spots in your home, like under sturdy tables.',
                '4. Develop a family emergency plan.',
                '5. Practice earthquake drills with your family.',
              ],
            ),
            _buildSection(
              context,
              'During an Earthquake',
              [
                '1. Drop, Cover, and Hold On.',
                '2. Stay indoors and away from windows.',
                '3. If outside, move away from buildings and streetlights.',
                '4. If driving, pull over safely and remain in the vehicle.',
              ],
            ),
            _buildSection(
              context,
              'After an Earthquake',
              [
                '1. Check for injuries and provide first aid if needed.',
                '2. Inspect your home for damage and potential hazards.',
                '3. Avoid using elevators.',
                '4. Listen to local news for updates and instructions.',
                '5. Be prepared for aftershocks.',
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
