import 'package:flutter/material.dart';

class MyTheme1 extends InheritedWidget {
  MyTheme1({super.key, required super.child});

  final Color backgroundColor = Colors.red[300] ?? Colors.red;
  final Color textColor = Colors.white;

  @override
  bool updateShouldNotify(MyTheme1 oldWidget) => true;
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        color:
            context
                .dependOnInheritedWidgetOfExactType<MyTheme1>()
                ?.backgroundColor ??
            Colors
                .red, // This is quite verbose and can be fixed with "of" method
        child: Text(
          "Hi",
          style: TextStyle(
            color:
                context
                    .dependOnInheritedWidgetOfExactType<MyTheme1>()
                    ?.textColor ??
                Colors
                    .white, // This is quite verbose and can be fixed with "of" method
          ),
        ),
      ),
    );
  }
}
