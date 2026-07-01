import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String name = "MUHAMMAD UMAR FAROOQ";
    int studentid = 727967;
    String institute = "BANO QABIL RAWALPINDI";

    List<String> skills = [ "Vibe coding", "tally.so", "Botpress", "n8n" ];

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Text("NAME = $name"),
        Text("STUDENT-ID = $studentid"),
        Text("INSTITUTE = $institute"),

        Text("Skill 1 = ${skills[0]}"),
        Text("Skill 2 = ${skills[1]}"),
        Text("Skill 3 = ${skills[2]}"),
        Text("Skill 4 = ${skills[3]}"),],

        ), 
      ),
    );
  }
}