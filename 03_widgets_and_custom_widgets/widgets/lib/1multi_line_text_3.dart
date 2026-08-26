import 'package:flutter/material.dart';

void main() {
  runApp(Container(
      padding: EdgeInsets.only(top:25, left:10, right:10),
      color: Colors.white,
      child: Text("Все мы сейчас желаем кушать, потому что утомились и "
          "уже четвертый час, но это, душа моя Григорий Саввич, "
          "не настоящий аппетит. Настоящий, волчий аппетит, когда, "
          "кажется, отца родного съел бы, бывает только после "
          "физических движений",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black87, fontSize: 20),
          maxLines: 4
      )
  )
  );
}
