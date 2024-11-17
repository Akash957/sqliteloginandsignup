import 'package:flutter/material.dart';
import 'dart:typed_data';

class MyHomePage extends StatelessWidget {
  final Uint8List? profileImageBytes;
  final String username;
  final String password;

  const MyHomePage({
    super.key,
    this.profileImageBytes,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            profileImageBytes != null
                ? CircleAvatar(
                    radius: 50,
                    backgroundImage: MemoryImage(profileImageBytes!),
                  )
                : CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.account_circle, size: 50),
                  ),
            SizedBox(height: 16),
            Text(
              'UserName: $username',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Password: $password',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
