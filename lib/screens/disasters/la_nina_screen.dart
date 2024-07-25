import 'package:flutter/material.dart';

class LaNinaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La Niña Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before La Niña',
              [
                '1. Prepare for increased rainfall and potential flooding.',
                '2. Secure your home’s drainage systems and clear gutters.',
                '3. Stock up on emergency supplies including water and non-perishable food.',
                '4. Have a family emergency plan in place.',
                '5. Stay updated with weather forecasts and warnings.',
              ],
            ),
            _buildSection(
              context,
              'During La Niña',
              [
                '1. Avoid unnecessary travel, especially in heavy rain.',
                '2. Stay indoors and avoid walking or driving through floodwater.',
                '3. Keep updated with local weather reports and follow instructions.',
                '4. Prepare for possible power outages and have flashlights ready.',
              ],
            ),
            _buildSection(
              context,
              'After La Niña',
              [
                '1. Inspect your property for damage and report it to authorities.',
                '2. Avoid contact with floodwater to prevent health risks.',
                '3. Clean and disinfect affected areas thoroughly.',
                '4. Continue to listen to local news for any ongoing advisories.',
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
