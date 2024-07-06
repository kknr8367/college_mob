import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reports'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.report, size: 100, color: Colors.blueGrey),
            SizedBox(height: 20),
            Text('Reports Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
