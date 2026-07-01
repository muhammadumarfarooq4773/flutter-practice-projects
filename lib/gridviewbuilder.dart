import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> menu = [
      "Home",
      "Profile",
      "Settings",
      "Courses",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview Builder"),
      ),

      body: GridView.builder(
        itemCount: menu.length,
        gridDelegate: 
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),

        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(menu[index]),
            ),
          );
        },
        ),
    );
  }
}