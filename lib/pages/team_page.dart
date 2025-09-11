import 'package:flutter/material.dart';
import '../models/team.dart';
import '../widgets/team_tile.dart';

class TeamPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lag & Spelare')),
      body: ListView(children: mockTeams.map((t) => TeamTile(team: t)).toList()),
    );
  }
}
