import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({super.key});

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  
  int selectedIndex = 0;

  List<Widget> screens = [
    Center(child: Text("HOME SCREEN",
    style: TextStyle(fontSize: 40,
    fontWeight: FontWeight.bold),),),

    Center(child: Text("PROFILE SCREEN",
    style: TextStyle(fontSize: 40,
    fontWeight: FontWeight.bold),),),

    Center(child: Text("SETTING SCREEN",
    style: TextStyle(fontSize: 40,
    fontWeight: FontWeight.bold),),),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drawer Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 67, 72, 72),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/UmaR.jpg"),
                  ),

                  const SizedBox(height: 15,),

                  Text("MUHAMMAD UMAR FAROOQ",
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      body: screens[selectedIndex],

    );
  }
}