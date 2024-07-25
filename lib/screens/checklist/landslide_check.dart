import 'package:flutter/material.dart';

class LandslideChecklistScreen extends StatefulWidget {
  @override
  _LandslideChecklistScreenState createState() => _LandslideChecklistScreenState();
}

class _LandslideChecklistScreenState extends State<LandslideChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Monitor weather forecasts and advisories for landslide warnings.': false,
    'Know your local evacuation routes and safe areas away from landslide-prone zones.': false,
    'Inspect your property for potential landslide risks and reinforce vulnerable areas.': false,
    'Have a family emergency plan and practice evacuation drills.': false,
    'If you are in a landslide-prone area, be prepared to evacuate immediately.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Prepare an emergency kit with essentials such as food, water, medications, and first-aid supplies.': false,
    'Pack important documents and valuables in a waterproof container.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landslide Checklist'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'What to Do',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 600 ? 24.0 : 20.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 16.0),
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
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width > 600 ? 18.0 : 16.0,
                      fontWeight: FontWeight.w500,
                    ),
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
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width > 600 ? 24.0 : 20.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(height: 16.0),
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
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width > 600 ? 18.0 : 16.0,
                      fontWeight: FontWeight.w500,
                    ),
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
