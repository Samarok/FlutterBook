// Импортируем необходимый пакет Flutter
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// //В этом коде мы создаем кастомный виджет MyMultiChildWidget, который наследуется от MultiChildRenderObjectWidget. Это означает, что наш виджет может иметь несколько дочерних элементов.
class CustomMultiChildLayout extends MultiChildRenderObjectWidget {
  // Конструктор виджета, который принимает ключ и список дочерних виджетов
  CustomMultiChildLayout({
    Key? key, // Необязательный ключ для идентификации виджета
    required List<Widget> children, // Обязательный список дочерних виджетов
  }) : super(key: key, children: children); // Передача аргументов конструктору родительского класса
  @override
  RenderCustomMultiChildLayout createRenderObject(BuildContext context) {
    // Создание объекта рендеринга, который будет использоваться для рендеринга виджета
    return RenderCustomMultiChildLayout();
  }
}
// Определение кастомного объекта рендеринга
class RenderCustomMultiChildLayout extends RenderBox
    with ContainerRenderObjectMixin<RenderBox, CustomMultiChildParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, CustomMultiChildParentData> {

  @override
  void setupParentData(RenderBox child) {
    // Настройка данных родителя для дочернего элемента
    if (child.parentData is! CustomMultiChildParentData) {
      // Если данные родителя не являются экземпляром CustomMultiChildParentData
      child.parentData = CustomMultiChildParentData(); // Установка данных родителя
    }
  }
  @override
  void performLayout() {
    // Выполнение компоновки для размещения дочерних элементов
    double yOffset = 0.0; // Начальное смещение по вертикали
    RenderBox? child = firstChild; // Получение первого дочернего элемента
    while (child != null) {
      // Пока есть дочерние элементы
      final CustomMultiChildParentData childParentData = child.parentData as CustomMultiChildParentData; // Получение данных родителя
      child.layout(constraints, parentUsesSize: true); // Выполнение компоновки дочернего элемента с учетом его размера
      childParentData.offset = Offset(0, yOffset); // Установка смещения дочернего элемента
      yOffset += child.size.height; // Увеличение смещения по вертикали на высоту дочернего элемента
      child = childParentData.nextSibling; // Получение следующего дочернего элемента
    }
    size = constraints.constrain(Size(constraints.maxWidth, yOffset)); // Установка размера объекта рендеринга
  }
  @override
  void paint(PaintingContext context, Offset offset) {
    // Выполнение отрисовки дочерних элементов
    RenderBox? child = firstChild; // Получение первого дочернего элемента
    while (child != null) {
      final CustomMultiChildParentData childParentData = child.parentData as CustomMultiChildParentData; // Получение данных родителя
      context.paintChild(child, childParentData.offset + offset); // Отрисовка дочернего элемента с учетом смещения
      child = childParentData.nextSibling; // Получение следующего дочернего элемента
    }
  }
}
// Определение класса данных родителя для кастомного рендер-объекта
class CustomMultiChildParentData extends ContainerBoxParentData<RenderBox> {}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomMultiChildLayout(
          children: [
            // Определение дочерних элементов, которые будут отображаться внутри кастомного виджета. Внутри нашего виджета мы создаем три контейнера с разными цветами.
            Container(color: Colors.red, height: 50, width: 50), // Красный контейнер
            Container(color: Colors.green, height: 50, width: 50), // Зеленый контейнер
            Container(color: Colors.blue, height: 50, width: 50), // Синий контейнер
          ],
        ),
      ),
    ),
  );
}
