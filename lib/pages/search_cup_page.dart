import 'package:flutter/material.dart';
import '../models/cup.dart';
import '../widgets/cup_card.dart';

class SearchCupPage extends StatefulWidget {
  final ValueChanged<Cup> onCupTap;
  const SearchCupPage({Key? key, required this.onCupTap}) : super(key: key);

  @override
  _SearchCupPageState createState() => _SearchCupPageState();
}

class _SearchCupPageState extends State<SearchCupPage> {
  String query = "";

  @override
  Widget build(BuildContext context) {
    final results = mockCups
        .where((c) =>
            c.name.toLowerCase().contains(query.toLowerCase()) ||
            c.location.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        TextField(
          decoration: InputDecoration(labelText: 'Sök cuper', border: OutlineInputBorder()),
          onChanged: (value) => setState(() => query = value),
        ),
        SizedBox(height: 16),
        ...results.map((cup) => CupCard(cup: cup, onTap: () => widget.onCupTap(cup))),
      ],
    );
  }
}
