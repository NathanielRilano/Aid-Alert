import 'package:flutter/material.dart';

class TsunamiChecklistScreen extends StatefulWidget {
  @override
  _TsunamiChecklistScreenState createState() => _TsunamiChecklistScreenState();
}

class _TsunamiChecklistScreenState extends State<TsunamiChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Monitor tsunami alerts and follow evacuation orders promptly.': false,
    'Know the evacuation routes and high ground locations in your area.': false,
    'If you are in a tsunami-prone area, move to higher ground immediately if an alert is issued.': false,
    'Avoid going to the beach or coastal areas during a tsunami alert.': false,
    'Stay away from flooded areas and damaged infrastructure.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Prepare an emergency kit with essentials such as food, water, medications, and a flashlight.': false,
    'Pack important documents and any necessary personal items.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tsunami Checklist'),
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
