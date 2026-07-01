import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "$count",
          style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: "minus",
            onPressed: () {
              setState(() {
                count--;
              });
            },
            child: const Icon(Icons.remove),
            ),

            SizedBox(width: 10),

      FloatingActionButton(
        heroTag: "plus",
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
        ),
        ],
      ),
    );
  }
}