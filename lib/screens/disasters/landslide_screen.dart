import 'package:flutter/material.dart';

class LandslideScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landslide Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Landslide',
              [
                '1. Identify if you live in a landslide-prone area.',
                '2. Check and secure the stability of slopes around your property.',
                '3. Ensure proper drainage systems to prevent water accumulation.',
                '4. Have an emergency kit ready with essentials.',
                '5. Stay informed about weather conditions and landslide warnings.',
              ],
            ),
            _buildSection(
              context,
              'During a Landslide',
              [
                '1. Move to higher ground immediately.',
                '2. Avoid staying in or near areas prone to landslides.',
                '3. Listen to local news and follow evacuation orders.',
                '4. Do not attempt to cross areas affected by landslides.',
              ],
            ),
            _buildSection(
              context,
              'After a Landslide',
              [
                '1. Wait for the “all clear” from authorities before returning home.',
                '2. Inspect your property for damage and report to authorities.',
                '3. Avoid touching or walking near downed power lines.',
                '4. Be cautious of unstable ground and potential aftershocks.',
                '5. Follow local instructions and stay informed.',
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
