import 'package:flutter/material.dart';

class HostelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hostel'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.home, size: 100, color: Colors.cyan),
            SizedBox(height: 20),
            Text('Hostel Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
