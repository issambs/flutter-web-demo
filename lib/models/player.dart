class Player {
  final String id;
  final String name;
  final int number;
  final String position;

  Player({required this.id, required this.name, required this.number, this.position = ''});
}

List<Player> mockPlayers = [
  Player(id: 'p1', name: 'Spelare A', number: 7, position: 'FW'),
  Player(id: 'p2', name: 'Spelare B', number: 4, position: 'DF'),
];
