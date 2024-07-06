import 'package:flutter/material.dart';

class SyllabusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Syllabus'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.book, size: 100, color: Colors.purple),
            SizedBox(height: 20),
            Text('Syllabus Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
