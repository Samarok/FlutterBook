import 'package:flutter/material.dart';
 
void main() {
  runApp(Container(
    padding: EdgeInsets.only(top:30, left:10),
    color: Colors.teal,
    child: Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Text('Вот мысль, которой весь я предан,',
              textDirection: TextDirection.ltr),
          Text('Итог всего, что ум скопил.',
              textDirection: TextDirection.ltr),
          Text('Лишь тот, кем бой за жизнь изведан,',
              textDirection: TextDirection.ltr),
          Text('Жизнь и свободу заслужил.',
              textDirection: TextDirection.ltr)
        ],
      )
    )
  );
}