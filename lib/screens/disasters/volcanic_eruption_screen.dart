import 'package:flutter/material.dart';

class VolcanicEruptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volcanic Eruption Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Volcanic Eruption',
              [
                '1. Know the evacuation routes and shelters in your area.',
                '2. Prepare an emergency kit with masks, goggles, and other essentials.',
                '3. Secure your home by sealing windows and doors to prevent ash infiltration.',
                '4. Stay informed about volcanic activity and alerts.',
                '5. Have a family emergency plan and discuss it with all members.',
              ],
            ),
            _buildSection(
              context,
              'During a Volcanic Eruption',
              [
                '1. Seek shelter indoors and avoid exposure to ash and fumes.',
                '2. Use a mask and goggles to protect yourself from ash inhalation.',
                '3. Monitor local news for updates and follow evacuation orders if issued.',
                '4. Stay away from river valleys and low-lying areas prone to lava flows.',
              ],
            ),
            _buildSection(
              context,
              'After a Volcanic Eruption',
              [
                '1. Wait for the “all clear” before leaving your shelter.',
                '2. Inspect your property for damage and clean up ash deposits carefully.',
                '3. Avoid driving unless necessary, as ash can damage vehicles.',
                '4. Follow local instructions and continue to monitor updates.',
                '5. Be cautious of possible aftershocks and secondary eruptions.',
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
