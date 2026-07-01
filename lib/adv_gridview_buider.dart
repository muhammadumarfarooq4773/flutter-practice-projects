import 'package:flutter/material.dart';

class AdvGridViewBuilder extends StatelessWidget {
  const AdvGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, dynamic>> menu = [
      {
        "title": "Home",
        "icon": Icons.home,
      },
      {
        "title": "Profile",
        "icon": Icons.person,
      },
      {
        "title": "Settings",
        "icon": Icons.settings,
      },
      {
        "title": "Courses",
        "icon": Icons.book,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Advance Gridview Builder"),
      ),

      body: GridView.builder(
        itemCount: menu.length,
        gridDelegate: 
            const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),

        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(menu[index]["icon"]),

                const SizedBox(height: 10,),

                Text(menu[index]["title"]),
              ],
            ),
          );
        },
      ),
    );
  }
}