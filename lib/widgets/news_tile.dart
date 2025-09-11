import 'package:flutter/material.dart';
import '../models/news.dart';

class NewsTile extends StatelessWidget {
  final News news;

  const NewsTile({Key? key, required this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(news.title),
        subtitle: Text(news.content),
        trailing: Text(news.date),
      ),
    );
  }
}
