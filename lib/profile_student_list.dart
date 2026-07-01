import 'package:flutter/material.dart';

class ProfileStudentList extends StatelessWidget {
  final String name ;
  const ProfileStudentList({super.key,
  required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile-Student-List"),
      ),

      body: Center(
        child: Text("NAME: $name",style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
      ),
    );
  }
}