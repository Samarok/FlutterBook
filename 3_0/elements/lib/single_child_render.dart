// Импортируем необходимый пакет Flutter
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // Для работы с RenderBox
// MySingleChildRenderObject: Класс отвечает за компоновку и рендеринг дочернего элемента
class MySingleChildRenderObject extends RenderBox
// Используем RenderObjectWithChildMixin для работы с одним дочерним элементом
    with RenderObjectWithChildMixin<RenderBox> {
  // Метод performLayout: Вызывается для вычисления размеров и расположения дочернего элемента
  @override
  void performLayout() {
    // Проверяем наличие дочернего элемента
    if (child != null) {
      // Компонуем дочерний элемент с учетом ограничений
      child!.layout(constraints, parentUsesSize: true);

      // Задаем размеры текущего контейнера на основе размеров дочернего элемента
      size = constraints.constrain(child!.size);
    } else {
      // Если дочернего элемента нет, задаем размер как Size.zero
      size = Size.zero;
    }
  }
  // Метод paint: Отвечает за отрисовку дочернего элемента на экране
  @override
  void paint(PaintingContext context, Offset offset) {
    if (child != null) {
      // Отрисовываем дочерний элемент с учетом смещения offset
      context.paintChild(child!, offset);
    }
  }
}
// MySingleChildWidget: Виджет, наследующийся от SingleChildRenderObjectWidget, может иметь одного дочернего элемента
class MySingleChildWidget extends SingleChildRenderObjectWidget {
  // Конструктор принимает один дочерний элемент
  MySingleChildWidget({required Widget child}) : super(child: child);

  // Создание рендер-объекта MySingleChildRenderObject, который управляет рендерингом
  @override
  MySingleChildRenderObject createRenderObject(BuildContext context) {
    return MySingleChildRenderObject();
  }
}
// Основное приложение, которое демонстрирует использование MySingleChildWidget
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          // Используем кастомный виджет MySingleChildWidget с дочерним элементом Container
          child: MySingleChildWidget(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red, // Красный контейнер размером 100x100 пикселей
            ),
          ),
        ),
      ),
    ),
  );
}
// В результате мы получим контейнер с красным цветом размером 100x100 пикселей.
