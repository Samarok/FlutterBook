import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('HTTP-запросы')),
        body: ArticleList(),
      ),
    );
  }
}

class ArticleList extends StatefulWidget {
  @override
  _ArticleListState createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  List articles = [];

  Future<void> fetchArticles() async {
    final response = await http.get(Uri.parse('http://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      setState(() {
        articles = jsonDecode(response.body);
      });
    } else {
      print('Ошибка загрузки статей: ${response.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchArticles();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(articles[index]['title']),
          subtitle: Text(articles[index]['body']),
        );
      },
    );
  }
}
