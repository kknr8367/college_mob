import 'package:flutter/material.dart';

class SportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.sports, size: 100, color: Colors.deepOrange),
            SizedBox(height: 20),
            Text('Sports Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
