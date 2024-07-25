import 'package:flutter/material.dart';

class TornadoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tornado Safety'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildSection(
              context,
              'Before a Tornado',
              [
                '1. Identify a safe place in your home such as a basement or interior room.',
                '2. Create an emergency kit with essential supplies.',
                '3. Secure outdoor items and reinforce windows and doors.',
                '4. Stay informed about weather conditions and tornado warnings.',
                '5. Have a family emergency plan in place.',
              ],
            ),
            _buildSection(
              context,
              'During a Tornado',
              [
                '1. Move to your designated safe place immediately.',
                '2. Avoid windows and stay away from outside walls.',
                '3. Protect yourself from debris with a mattress or sturdy furniture.',
                '4. Listen to local news for updates and instructions.',
              ],
            ),
            _buildSection(
              context,
              'After a Tornado',
              [
                '1. Wait for the “all clear” before leaving your shelter.',
                '2. Inspect your property for damage and report it to authorities.',
                '3. Avoid downed power lines and other hazards.',
                '4. Use caution when entering damaged buildings.',
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
