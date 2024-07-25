import 'package:flutter/material.dart';

class FireChecklistScreen extends StatefulWidget {
  @override
  _FireChecklistScreenState createState() => _FireChecklistScreenState();
}

class _FireChecklistScreenState extends State<FireChecklistScreen> {
  final Map<String, bool> _whatToDo = {
    'Create and practice a fire escape plan with all family members.': false,
    'Ensure electrical wiring is up to code and avoid overloading outlets with multiple appliances.': false,
    'Store flammable materials away from ignition sources and out of reach of children.': false,
    'Know how to operate a fire extinguisher (PASS: Pull, Aim, Squeeze, Sweep).': false,
    'Keep matches and lighters in a secure location away from children.': false,
    'Check for and address potential fire hazards in and around your home.': false,
    'Know your local emergency numbers and ensure your mobile phone is fully charged.': false,
  };

  final Map<String, bool> _whatToBring = {
    'Install smoke detectors on every floor and test them monthly.': false,
    'Place fire extinguishers in key areas like the kitchen, garage, and near electrical appliances.': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fire Safety Checklist'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'What to Do',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
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
