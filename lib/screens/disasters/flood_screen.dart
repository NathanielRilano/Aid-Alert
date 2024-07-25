import 'package:flutter/material.dart';

class FloodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flood Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Flood',
              [
                'Identify if you live in a flood-prone area.',
                'Prepare an emergency kit with essential supplies.',
                'Elevate electrical appliances and utilities.',
                'Install sump pumps and check drainage systems.',
                'Create an emergency plan.',
              ],
            ),
            _buildSection(
              context,
              'During a Flood',
              [
                'Move to higher ground immediately.',
                'Stay indoors and avoid using electrical appliances.',
                'Listen to local news for updates.',
                'Follow evacuation orders if issued.',
              ],
            ),
            _buildSection(
              context,
              'After a Flood',
              [
                'Wait for official “all clear” before returning home.',
                'Inspect your property for damage.',
                'Clean and disinfect items exposed to floodwater.',
                'Report damage to your insurance provider.',
                'Be cautious of contaminated water and downed power lines.',
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
