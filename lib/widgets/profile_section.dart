import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  final String title, content;
  const ProfileSection({required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(content, style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
