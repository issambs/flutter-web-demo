import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Admin sida innehåll kommer här",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
