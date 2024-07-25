import 'package:flutter/material.dart';

class FireScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Fire',
              [
                '1. Install smoke detectors on every level of your home.',
                '2. Create and practice a fire escape plan with your family.',
                '3. Keep flammable materials away from heat sources.',
                '4. Regularly inspect and maintain electrical wiring.',
                '5. Store fire extinguishers in accessible locations.',
              ],
            ),
            _buildSection(
              context,
              'During a Fire',
              [
                '1. Get out of the building as quickly as possible.',
                '2. Use stairs, not elevators, to escape.',
                '3. Close doors behind you to slow the spread of fire.',
                '4. Stay low to avoid smoke inhalation.',
              ],
            ),
            _buildSection(
              context,
              'After a Fire',
              [
                '1. Wait for the “all clear” from authorities before returning home.',
                '2. Inspect your home for structural damage.',
                '3. Contact your insurance provider to report damages.',
                '4. Clean and disinfect areas affected by smoke.',
                '5. Seek medical attention if you have inhaled smoke.',
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
