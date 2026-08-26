import 'package:flutter/material.dart';
// В этом коде мы создаем кастомный виджет MyLeafWidget, который наследуется от LeafRenderObjectWidget. Это означает, что наш виджет не имеет дочерних элементов.
class MyLeafWidget extends LeafRenderObjectWidget {
  // Переопределение метода createRenderObject, который создает объект рендеринга.
  @override
  RenderObject createRenderObject(BuildContext context) {
    // Создание кастомного объекта рендеринга MyLeafRenderObject.
    return MyLeafRenderObject();
  }
}
// Класс MyLeafRenderObject наследуется от RenderBox. Это означает, что наш объект рендеринга может иметь размер и позицию.
class MyLeafRenderObject extends RenderBox {
  // Переопределение метода paint, который отвечает за отрисовку нашего виджета.
  @override
  void paint(PaintingContext context, Offset offset) {
    // Создание объекта Paint с синим цветом.
    final Paint paint = Paint()..color = Colors.blue;
    // Отрисовка круга с центром в точке offset и радиусом 50 пикселей.
    context.canvas.drawCircle(offset, 50, paint);
  }

  // Переопределение метода performLayout, который отвечает за позиционирование нашего виджета.
  @override
  void performLayout() {
    // Установка размера нашего виджета в 100x100 пикселей.
    size = Size(100, 100);
  }
}
// В методе main мы создаем приложение с центрированным контейнером, который содержит наш кастомный виджет MyLeafWidget.
void main() {
  runApp(Center(child: MyLeafWidget()));
}
// В результате мы получим синий круг размером 100x100 пикселей, центрированный на экране.
