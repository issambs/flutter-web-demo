import 'package:flutter/material.dart';
import '../models/match.dart';

class MatchCard extends StatelessWidget {
  final MatchModel match;
  final VoidCallback? onTap;

  const MatchCard({Key? key, required this.match, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text("${match.teamA} vs ${match.teamB}"),
        subtitle: Text("${match.time} • ${match.venue} • ${match.score}"),
        trailing: Icon(Icons.sports_soccer),
        onTap: onTap,
      ),
    );
  }
}
