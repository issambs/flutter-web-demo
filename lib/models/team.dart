class Team {
  final String id;
  final String name;
  final List<String> players;

  Team({required this.id, required this.name, required this.players});
}

List<Team> mockTeams = [
  Team(id: 't1', name: "Lag 1", players: ["Spelare A", "Spelare B", "Spelare C"]),
  Team(id: 't2', name: "Lag 2", players: ["Spelare D", "Spelare E"]),
];
