import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State createState() {
    return NewsState();
  }
}

class NewsState extends State<News> {
  NewsState() {}

  @override
  Widget build(BuildContext context) {
    return Text('news');
  }
}
