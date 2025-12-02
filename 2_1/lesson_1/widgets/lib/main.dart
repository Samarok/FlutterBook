import 'package:flutter/material.dart';
void main() {
  runApp(Center(
      child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 320, height: 80),
          child: Text(
              'Мы все учились понемногу\nЧему-нибудь и как-нибудь,\nТак воспитаньем, слава богу,\nУ нас немудрено блеснуть.',
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 22) // высота шрифта 22
        )
      )
    )
  );
}
