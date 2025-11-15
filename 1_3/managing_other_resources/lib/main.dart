import 'package:audioplayers/audioplayers.dart';  
import 'package:flutter/material.dart';  
  
void main() {  
  runApp(MyApp());  
}  
  
class MyApp extends StatefulWidget {  
  const MyApp({super.key});  
  
  @override  
  State<MyApp> createState() => _MyAppState();  
}  
  
class _MyAppState extends State<MyApp> {  
  void sing() async {  
    final player = AudioPlayer();  
    player.play(AssetSource('sounds/notification.mp3'));  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(title: Text('Аудио в Flutter')),  
        body: Center(  
          child: ElevatedButton(  
            onPressed: () async {  
              sing();  
            },  
            child: Text('Проиграть звук'),  
          ),  
        ),  
      ),  
    );  
  }  
} 
