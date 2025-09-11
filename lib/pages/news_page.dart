import 'package:flutter/material.dart';
import '../models/news.dart';
import '../widgets/news_tile.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nyheter')),
      body: ListView(children: mockNews.map((n) => NewsTile(news: n)).toList()),
    );
  }
}
