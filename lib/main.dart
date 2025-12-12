import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: MyInherit(child: MyHome()),
      ),
    );
  }
}

class MyInherit extends InheritedWidget {
  const MyInherit({super.key, required super.child, this.color = Colors.red});

  final Color color;

  @override
  bool updateShouldNotify(MyInherit oldWidget) => true;
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:
          context.dependOnInheritedWidgetOfExactType<MyInherit>()?.color ??
          Colors.amber,
      child: Text("Hi"),
    );
  }
}
