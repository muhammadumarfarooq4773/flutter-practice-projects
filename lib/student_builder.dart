import 'package:flutter/material.dart';
import 'profile_student_list.dart';

class StudentBuilderScreen extends StatelessWidget {
  const StudentBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> students = [
      "Haider",
      "Umar",
      "Ahmed",
      "Fahad",
      "Hamza",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("STUDENT BUILDER"),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(students[index]),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ProfileStudentList(name: students[index]),),);
            },
          );
        },
    ),
    );
  }
}