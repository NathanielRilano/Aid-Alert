import 'package:flutter/material.dart';

class TornadoChecklistScreen extends StatefulWidget {
  @override
  _TornadoChecklistScreenState createState() => _TornadoChecklistScreenState();
}

class _TornadoChecklistScreenState extends State<TornadoChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Monitor weather updates and tornado warnings.': false,
    'Identify a safe location in your home such as a basement or interior room.': false,
    'Prepare an emergency kit with essentials and keep it accessible.': false,
    'Have a family emergency plan and practice tornado drills.': false,
    'If a tornado is imminent, seek shelter immediately and avoid windows.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Prepare an emergency kit with essentials such as food, water, medications, and a flashlight.': false,
    'Pack important documents and any necessary personal items.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tornado Checklist'),
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
