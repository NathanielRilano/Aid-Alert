import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class CommunityScreen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  final _formKey = GlobalKey<FormState>();
  final _feedbackController = TextEditingController();
  final List<Map<String, dynamic>> _feedbackList = [
    {
      'user': 'Anger',
      'text': 'This app is amazing!',
      'avatar': 'assets/avatar/anger.jpg',
    },
    {
      'user': 'Bob',
      'text': 'Could use some improvements.',
      'avatar': 'assets/avatar/blueguy.jpg',
    },
    {
      'user': 'Joy',
      'text': 'I love the new features!',
      'avatar': 'assets/avatar/joy.png',
    },
    {
      'user': 'Dave',
      'text': 'Not a fan of the latest update.',
      'avatar': 'assets/avatar/maui.jpg',
    },
  ];

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _feedbackList.add({
          'user': 'New User',
          'text': _feedbackController.text,
          'avatar': 'assets/new_user.jpg',
        });
        _feedbackController.clear();
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Feedback submitted!')),
      );
    }
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Community Feedback'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Submit your feedback',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _feedbackController,
                    maxLines: 5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Your Feedback',
                      hintText: 'Write your feedback here...',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your feedback';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: _submitFeedback,
                      icon: Icon(Icons.send),
                      label: Text('Submit'),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'User Feedback',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _feedbackList.length,
                itemBuilder: (context, index) {
                  final feedback = _feedbackList[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(feedback['avatar']),
                      ),
                      title: Text(feedback['user']),
                      subtitle: Text(feedback['text']),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
