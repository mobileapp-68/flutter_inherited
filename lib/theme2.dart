import 'package:flutter/material.dart';

class MyTheme extends InheritedWidget {
  MyTheme({super.key, required super.child});

  final Color backgroundColor = Colors.red[300] ?? Colors.red;
  final Color textColor = Colors.white;

  // Here we implement the "maybeOf" and "of" methods
  static MyTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyTheme>();
  }

  static MyTheme of(BuildContext context) {
    final MyTheme? result = maybeOf(context);
    assert(result != null, "No MyTheme2 found");
    return result!;
  }

  @override
  bool updateShouldNotify(MyTheme oldWidget) => true;
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        color: MyTheme.of(
          context,
        ).backgroundColor, // Now the "of" method is used and guaranteed to return a non-null value
        child: Text(
          "Hi",
          style: TextStyle(
            color: MyTheme.of(
              context,
            ).textColor, // Now the "of" method is used and guaranteed to return a non-null value
          ),
        ),
      ),
    );
  }
}
