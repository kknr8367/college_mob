import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_album, size: 100, color: Colors.pink),
            SizedBox(height: 20),
            Text('Gallery Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
