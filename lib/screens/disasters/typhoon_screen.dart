import 'package:flutter/material.dart';

class TyphoonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Typhoon Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Typhoon',
              [
                '1. Secure your home by reinforcing windows and doors.',
                '2. Prepare an emergency kit with necessary supplies.',
                '3. Clear gutters and downspouts to prevent flooding.',
                '4. Have a family emergency plan and evacuation routes ready.',
                '5. Stay informed about weather conditions and warnings.',
              ],
            ),
            _buildSection(
              context,
              'During a Typhoon',
              [
                '1. Stay indoors and avoid going outside.',
                '2. Avoid using electrical appliances and be cautious of flooding.',
                '3. Monitor local news for updates and emergency instructions.',
                '4. Follow evacuation orders if issued.',
              ],
            ),
            _buildSection(
              context,
              'After a Typhoon',
              [
                '1. Wait for the “all clear” from authorities before leaving your home.',
                '2. Inspect your property for damage and report to authorities.',
                '3. Avoid walking or driving through flooded areas.',
                '4. Be cautious of downed power lines and other hazards.',
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
