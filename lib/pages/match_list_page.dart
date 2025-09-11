import 'package:flutter/material.dart';
import '../models/match.dart';
import '../widgets/match_card.dart';
import 'match_detail_page.dart';

class MatchListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matcher')),
      body: ListView(children: mockMatches.map((m) => MatchCard(
        match: m,
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MatchDetailPage(match: m))),
      )).toList()),
    );
  }
}
