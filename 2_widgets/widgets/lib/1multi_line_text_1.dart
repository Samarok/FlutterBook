import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.only(top:25, left:10, right:10),
      color: Colors.white,
      child: Text("Все мы сейчас желаем кушать, потому что утомились и",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black87, fontSize: 20),
          overflow: TextOverflow.ellipsis)
  )
  );
}
