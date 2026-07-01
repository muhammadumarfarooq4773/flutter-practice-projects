import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  final String name;
  final String studentId;
  final String institute;

  const Profile1({super.key,
  required this.name,
  required this.studentId,
  required this.institute});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE---SCREEN"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: $name", style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),

            Text("STUDENT-ID: $studentId ", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),

            Text("INSTITUTE: $institute", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}