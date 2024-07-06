import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Time-Table'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.schedule, size: 100, color: Colors.blue),
            SizedBox(height: 20),
            Text('Time-Table Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
