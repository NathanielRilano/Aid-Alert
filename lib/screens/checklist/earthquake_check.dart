import 'package:flutter/material.dart';

class EarthquakeChecklistScreen extends StatefulWidget {
  @override
  _EarthquakeChecklistScreenState createState() => _EarthquakeChecklistScreenState();
}

class _EarthquakeChecklistScreenState extends State<EarthquakeChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Secure heavy furniture, appliances, and other items that could fall during an earthquake.': false,
    'Create and practice a family emergency plan, including safe spots and evacuation routes.': false,
    'Know how to turn off gas, water, and electricity in case of leaks or damage.': false,
    'Check for structural weaknesses in your home and reinforce them if necessary.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Prepare an emergency kit with essentials such as food, water, first-aid supplies, and medications.': false,
    'Have a battery-powered radio and flashlight with extra batteries.': false,
    'Keep a list of emergency contacts and medical information readily available.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Safety Checklist'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'What to Do',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color:Theme.of(context).primaryColor,),
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
