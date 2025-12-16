import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
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
