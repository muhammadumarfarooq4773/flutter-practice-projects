import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {

  String name = "";
  String institute = "";
  String id = "";
  String submittedName = "";
  String submittedInstitute = "";
  String submittedId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField Demo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  name=value ;
                });
              },
            ),

            const SizedBox(height: 20),
            
            Text("Hello! $submittedName",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            const SizedBox(height: 20,),

            TextField(
              decoration: const InputDecoration(
                labelText: "Institute",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  institute=value ;
                });
              },
            ),

            const SizedBox(height: 20,),

            Text("Institute: $submittedInstitute",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            const SizedBox(height: 20,),

            TextField(
              decoration: const InputDecoration(
                labelText: "Student-ID",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  id=value;
                });
              },
            ),

            const SizedBox(height: 20,),

            Text("ID: $submittedId",style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            const SizedBox(height: 15,),

            ElevatedButton(
              onPressed: () {

                if (name.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please Enter Name"),),);
                  return;
                  }

                if (institute.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please Enter Institute Name"),),);
                  return;
                  }

                if (id.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please Enter Student-Id"),),);
                  return;
                  }


              setState(() {
                submittedName=name;
                submittedInstitute=institute;
                submittedId=id;
              });
            },
            child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}