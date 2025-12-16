import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    // Using MediaQuery.sizeOf(context) only rebuilds the widget when the size changes
    // final specificWidth = MediaQuery.sizeOf(context).width;

    return Center(
      child: Container(
        // width: screenWidth * 0.8,
        // height: screenHeight * 0.2,
        // alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        color: Theme.of(
          context,
        ).colorScheme.primary,
        child: Text(
          "Hi",
          style: TextStyle(
            color: Theme.of(
              context,
            ).colorScheme.onPrimary,
          ),
        ),
      ),
    );
  }
}
