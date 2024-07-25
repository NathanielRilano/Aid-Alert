import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  final String initialName;
  final String initialEmail;
  final String initialAddress;
  final String initialContactNumber;

  EditProfileScreen({
    required this.initialName,
    required this.initialEmail,
    required this.initialAddress,
    required this.initialContactNumber,
  });

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _addressController;
  late TextEditingController _contactController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialName);
    _emailController = TextEditingController(text: widget.initialEmail);
    _addressController = TextEditingController(text: widget.initialAddress);
    _contactController = TextEditingController(text: widget.initialContactNumber);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, size: 24, color: Theme.of(context).primaryColor), 
                  labelText: 'Name',
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, size: 24, color: Theme.of(context).primaryColor),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20), 
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.location_on, size: 24, color: Theme.of(context).primaryColor),
                  labelText: 'Address',
                  labelStyle: TextStyle(fontSize: 20),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20), 
              TextFormField(
                controller: _contactController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone, size: 24, color: Theme.of(context).primaryColor),
                  labelText: 'Contact Number',
                  labelStyle: TextStyle(fontSize: 20), 
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your contact number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 32),

              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pop(context, {
                        'name': _nameController.text,
                        'email': _emailController.text,
                        'address': _addressController.text,
                        'contactNumber': _contactController.text,
                      });
                    }
                  },
                  child: Text('Save Changes', style: TextStyle(fontSize: 20)),
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
      ),
    );
  }
}
