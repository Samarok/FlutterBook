import 'package:flutter/material.dart';
// В этом коде мы создаем кастомный виджет MyRenderObjectWidget, который наследуется от LeafRenderObjectWidget. Это означает, что наш виджет не имеет дочерних элементов.
class MyRenderObjectWidget extends LeafRenderObjectWidget {
  // Переопределение метода createRenderObject, который создает объект рендеринга.
  @override
  RenderObject createRenderObject(BuildContext context) {
    // Создание кастомного объекта рендеринга MyRenderObject.
    return MyRenderObject();
  }
}
// Класс MyRenderObject наследуется от RenderBox. Это означает, что наш объект рендеринга может иметь размер и позицию.
class MyRenderObject extends RenderBox {
  // Переопределение метода paint, который отвечает за отрисовку нашего виджета.
  @override
  void paint(PaintingContext context, Offset offset) {
    // Создание объекта Paint с красным цветом.
    final Paint paint = Paint()..color = Colors.red;
    // Отрисовка прямоугольника с верхним левым углом в точке offset и размером 100x100 пикселей.
    context.canvas.drawRect(Rect.fromLTWH(offset.dx, offset.dy, 100, 100), paint);
  }
  // Переопределение метода performLayout, который отвечает за позиционирование нашего виджета.
  @override
  void performLayout() {
    // Установка размера нашего виджета в 100x100 пикселей.
    size = Size(100, 100);
  }
}
// В методе main мы создаем приложение с центрированным контейнером, который содержит наш кастомный виджет MyRenderObjectWidget.
void main() {
  runApp(Center(child: MyRenderObjectWidget()));
}
