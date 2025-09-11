class News {
  final String id;
  final String cupId;
  final String title;
  final String content;
  final String date;

  News({required this.id, required this.cupId, required this.title, required this.content, required this.date});
}

List<News> mockNews = [
  News(id: 'n1', cupId: '1', title: "Cup startar snart!", content: "Snart börjar Sommarcupen 2025 i Stockholm.", date: "2025-06-30"),
  News(id: 'n2', cupId: '1', title: "Resultat uppdaterat", content: "Lag 1 vann sin match 3-1.", date: "2025-07-12"),
];
