import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Калькулятор')),
        body: CalculatorForm(),
      ),
    );
  }
}

class CalculatorForm extends StatefulWidget {
  @override
  _CalculatorFormState createState() => _CalculatorFormState();
}

class _CalculatorFormState extends State<CalculatorForm> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  String _result = '';

  void _calculate(String operation) {
    double num1 = double.parse(_num1Controller.text);
    double num2 = double.parse(_num2Controller.text);
    setState(() {
      switch (operation) {
        case '+':
          _result = 'Результат: ${num1 + num2}';
          break;
        case '-':
          _result = 'Результат: ${num1 - num2}';
          break;
        case '*':
          _result = 'Результат: ${num1 * num2}';
          break;
        case '/':
          _result = num2 != 0 ? 'Результат: ${num1 / num2}' : 'Ошибка: деление на ноль';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: _num1Controller,
          decoration: InputDecoration(labelText: 'Число 1'),
          keyboardType: TextInputType.number,
        ),
        TextFormField(
          controller: _num2Controller,
          decoration: InputDecoration(labelText: 'Число 2'),
          keyboardType: TextInputType.number,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () => _calculate('+'), child: Text('+')),
            ElevatedButton(onPressed: () => _calculate('-'), child: Text('-')),
            ElevatedButton(onPressed: () => _calculate('*'), child: Text('*')),
            ElevatedButton(onPressed: () => _calculate('/'), child: Text('/')),
          ],
        ),
        SizedBox(height: 20),
        Text(_result),
      ],
    );
  }
}
