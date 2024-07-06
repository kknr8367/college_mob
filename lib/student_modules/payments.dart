import 'package:flutter/material.dart';

class PaymentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payments'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.payment, size: 100, color: Colors.greenAccent),
            SizedBox(height: 20),
            Text('Payments Screen', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
