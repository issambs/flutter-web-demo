class MatchModel {
  final String id;
  final String cupId;
  final String teamA;
  final String teamB;
  final String time;
  final String score;
  final String venue;

  MatchModel({
    required this.id,
    required this.cupId,
    required this.teamA,
    required this.teamB,
    required this.time,
    this.score = '',
    this.venue = '',
  });
}

List<MatchModel> mockMatches = [
  MatchModel(id: 'm1', cupId: '1', teamA: "Lag 1", teamB: "Lag 2", time: "10:00", score: "0-0", venue: "Plan A"),
  MatchModel(id: 'm2', cupId: '1', teamA: "Lag 3", teamB: "Lag 4", time: "11:30", score: "1-2", venue: "Plan B"),
];
