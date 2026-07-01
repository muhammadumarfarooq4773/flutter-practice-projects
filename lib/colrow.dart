import 'package:flutter/material.dart';

class Colrow extends StatelessWidget {
  const Colrow({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("HTML"),
            Text("CSS"),
            Text("JavaScript"),
          ],
        ),
      ),
    );
  }
}