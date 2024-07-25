import 'package:flutter/material.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _username = 'John Doe';
  String _email = 'john.doe@example.com';
  String _address = '123 Main Street, Springfield';
  String _contactNumber = '+1 234 567 890';
  String _profileImagePath = 'assets/avatar/blueguy.jpg';

  void _updateProfile(String name, String email, String address, String contactNumber) {
    setState(() {
      _username = name;
      _email = email;
      _address = address;
      _contactNumber = contactNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(_profileImagePath),
              ),
            ),
            SizedBox(height: 16),

            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 24, color: Theme.of(context).primaryColor),  
                      SizedBox(width: 12),
                      Text(
                        _username,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email, size: 24, color: Theme.of(context).primaryColor), 
                      SizedBox(width: 12),
                      Text(
                        _email,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on, size: 24, color: Theme.of(context).primaryColor), 
                      SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _address,
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.grey[600],
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.phone, size: 24, color: Theme.of(context).primaryColor),
                      SizedBox(width: 12),
                      Text(
                        _contactNumber,
                        style: TextStyle(
                          fontSize: 20, 
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),

            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditProfileScreen(
                        initialName: _username,
                        initialEmail: _email,
                        initialAddress: _address,
                        initialContactNumber: _contactNumber,
                      ),
                    ),
                  );

                  if (result != null) {
                    _updateProfile(result['name'], result['email'], result['address'], result['contactNumber']);
                  }
                },
                child: Text('Edit Profile', style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white, 
                  backgroundColor: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
