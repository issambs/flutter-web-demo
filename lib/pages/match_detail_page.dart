import 'package:flutter/material.dart';
import '../models/match.dart';

class MatchDetailPage extends StatelessWidget {
  final MatchModel match;

  const MatchDetailPage({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Matchdetaljer')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("${match.teamA} vs ${match.teamB}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text("Tid: ${match.time}"),
            Text("Plan: ${match.venue}"),
            SizedBox(height: 16),
            Text("Score: ${match.score}"),
            SizedBox(height: 16),
            Text("Live-uppdateringar (mock)"),
          ],
        ),
      ),
    );
  }
}
