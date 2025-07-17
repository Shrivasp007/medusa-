import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;

  Future<void> _pickImage() async {
    final picked = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setState(() {
        _image = File(picked.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            _image == null
                ? CircleAvatar(radius: 50, child: Icon(Icons.person, size: 50))
                : CircleAvatar(radius: 50, backgroundImage: FileImage(_image!)),
            TextButton(
              onPressed: _pickImage,
              child: Text('Upload Photo'),
            ),
            SizedBox(height: 20),
            Text('Welcome to your profile!', style: TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}