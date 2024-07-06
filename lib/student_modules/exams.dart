import 'package:flutter/material.dart';

class ExamsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Exams'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event, size: 100, color: Colors.orange),
            SizedBox(height: 20),
            Text('Exams Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
