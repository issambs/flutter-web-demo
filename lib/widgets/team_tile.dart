import 'package:flutter/material.dart';
import '../models/team.dart';

class TeamTile extends StatelessWidget {
  final Team team;

  const TeamTile({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(team.name),
      children: team.players.map((p) => ListTile(title: Text(p))).toList(),
    );
  }
}
