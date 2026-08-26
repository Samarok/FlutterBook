import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.only(top:25, left:10, right:10),
      color: Colors.teal,
      child: RichText(
          textDirection: TextDirection.ltr,
          text: TextSpan(
            text: "Hello Flutter",
            style: TextStyle(fontSize: 20),
            children: <TextSpan>[
              TextSpan(text: " from ", style: TextStyle(color: Colors.red)),
              TextSpan(text: "Metanit.com",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          )
      )
  )
  );
}
