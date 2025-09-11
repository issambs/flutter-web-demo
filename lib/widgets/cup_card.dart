import 'package:flutter/material.dart';
import '../models/cup.dart';

class CupCard extends StatelessWidget {
  final Cup cup;
  final VoidCallback? onTap;

  const CupCard({Key? key, required this.cup, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      child: ListTile(
        leading: CircleAvatar(child: Text(cup.name[0])),
        title: Text(cup.name, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("${cup.date} • ${cup.type} • ${cup.location}" +
            (cup.description.isNotEmpty ? "\n${cup.description}" : "")),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
