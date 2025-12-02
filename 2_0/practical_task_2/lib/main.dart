import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListView(),
    );
  }
}
 
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Список элементов'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Карта'),
          ),
          ListTile(
            leading: Icon(Icons.photo),
            title: Text('Фотографии'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Телефон'),
          ),
        ],
      ),
    );
  }
}
