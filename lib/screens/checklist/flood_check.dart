import 'package:flutter/material.dart';

class FloodChecklistScreen extends StatefulWidget {
  @override
  _FloodChecklistScreenState createState() => _FloodChecklistScreenState();
}

class _FloodChecklistScreenState extends State<FloodChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Identify if you live in a flood-prone area.': false,
    'Create and communicate a family emergency plan, including evacuation routes and meeting points.': false,
    'Install and regularly check sump pumps, and ensure drainage systems are clear and functioning.': false,
    'Secure important documents and valuables in waterproof containers or elevate them above potential flood levels.': false,
    'Stay updated with local news, weather forecasts, and flood alerts from authorities.': false,
    'Know the nearest evacuation centers and routes.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Prepare an emergency kit with essentials such as non-perishable food, bottled water, first-aid kit, and medications.': false,
    'Have a battery-powered radio, flashlight, and extra batteries.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flood Safety Checklist'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'What to Do',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor,),
            ),
            ..._whatToDo.keys.map((item) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CheckboxListTile(
                  title: Text(
                    item,
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  value: _whatToDo[item],
                  onChanged: (bool? value) {
                    setState(() {
                      _whatToDo[item] = value!;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              );
            }).toList(),
            SizedBox(height: 20),
            Text(
              'What to Bring',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor,),
            ),
            ..._whatToBring.keys.map((item) {
              return Card(
                margin: EdgeInsets.symmetric(vertical: 8.0),
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CheckboxListTile(
                  title: Text(
                    item,
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                  ),
                  value: _whatToBring[item],
                  onChanged: (bool? value) {
                    setState(() {
                      _whatToBring[item] = value!;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
