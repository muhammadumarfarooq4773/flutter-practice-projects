import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String, String>> students = [
    {
      "name": "Haider Abbas Khan",
      "id": "21-ARID-4695",
      "institute": "BIMS",
    },

    {
      "name": "Muhammad Umar Farooq",
      "id": "21-ARID-4773",
      "institute": "BIMS",
    },

    {
      "name": "Fahad Naeem",
      "id": "21-ARID-4684",
      "institute": "BIMS",
    },
  ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Student Card"),
      ),

      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              leading: const CircleAvatar(
                child: Icon(Icons.person),
              ),
              title: Text(
                students[index]["name"]!,
                ),

              subtitle: Text(
                "ID: ${students[index]["id"]}\n"
                "Institute: ${students[index]["institute"]}", 
                ),
            ),
          );
        },
        ),
    );
  }
}