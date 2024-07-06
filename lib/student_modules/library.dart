import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Library'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.library_books, size: 100, color: Colors.brown),
            SizedBox(height: 20),
            Text('Library Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
