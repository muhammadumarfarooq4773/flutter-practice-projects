import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: const Text("STUDENT LIST"),
    ),
    body: ListView(
      children: [
        Padding(padding: EdgeInsets.all(12)),

        Row(
          children: [
            Icon(Icons.person),
            SizedBox(width: 10,),
            Text("Ali"),
          ],
        ),
        Divider(),

        Row(
          children: [
            Icon(Icons.person),
            SizedBox(width: 10,),
            Text("Umar"),
          ],
        ),
        Divider(),

        Row(
          children: [
            Icon(Icons.person),
            SizedBox(width: 10,),
            Text("Haider"),
          ],
        ),
        Divider(),
      ],
    )
  );
}
}