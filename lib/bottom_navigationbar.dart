import 'package:flutter/material.dart';

class BottomNavigationbar extends StatefulWidget {
  const BottomNavigationbar({super.key});

  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}
class _BottomNavigationbarState extends State<BottomNavigationbar> {

  int selectedIndex = 0;

  List<Widget> screens = [
    Center(child: Text("Home Screen",
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold),),),
    Center(child: Text("Profile Screen",
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold),),),
    Center(child: Text("Setting Screen",
    style: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Bottom Navigation Bar"),
      ),
      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex =index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
        ),],
        
         ),
    );
  }
}
