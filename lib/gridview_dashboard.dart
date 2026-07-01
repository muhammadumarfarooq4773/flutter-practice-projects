import 'package:flutter/material.dart';

class GridViewDashboard extends StatelessWidget {
  const GridViewDashboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Gridview Dashboard"),
      ),

      body: GridView.count(
        crossAxisCount: 2,
        
        children: [
          Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: const [
                Icon(Icons.home, size: 50,),
                SizedBox(height: 10,),
                Text("Home"),
              ],
            ),
          ),

          Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.person, size: 50,),
                SizedBox(height: 10,),
                Text("Profile"),
              ],
            ),
          ),

          Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.settings, size: 50,),
                SizedBox(height: 10,),
                Text("Settings"),
              ],
            ),
          ),

          Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.book, size: 50,),
                SizedBox(height: 10,),
                Text("Courses"),
              ],
            ),
          ),
          
        ],

        ),
    );
  }
}