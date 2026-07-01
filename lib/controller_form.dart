import 'package:flutter/material.dart';

class ControllerForm extends StatefulWidget {
  const ControllerForm({super.key});

@override
State<ControllerForm> createState() => _ControllerFormState();
}

class _ControllerFormState extends State<ControllerForm> {
String submittedName = "";
String submittedInstitute = "";
String submittedId = "";

  TextEditingController nameController = 
      TextEditingController();
  
  TextEditingController instituteController = 
      TextEditingController();

  TextEditingController idController = 
      TextEditingController();

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Controller Form"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: "Name",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 35,),

          TextField(
            controller: instituteController,
            decoration: const InputDecoration(
              labelText: "Institute",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 35,),

          TextField(
            controller: idController,
            decoration: const InputDecoration(
              labelText: "ID",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15,),

          ElevatedButton(
            onPressed: () {
              if (nameController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please Enter Name"),),);
                  return;
              }
              if (instituteController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please Enter Institute Name"),),);
                  return;
              }
              if (idController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Please Enter ID"),),);
                  return;
              }

              setState(() {
                submittedName = nameController.text;
                submittedInstitute = instituteController.text;
                submittedId = idController.text;
              });

            },
            child: const Text("Submit"),
            ),
            const SizedBox(height: 20,),

           
                 Text("Name:  $submittedName", style: 
                 const TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold),),
                 const SizedBox(height: 10,),

                 Text("Institute:  $submittedInstitute", style: 
                 const TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold),),
                 const SizedBox(height: 10,),
    
                 Text("ID:  $submittedId", style: 
                 const TextStyle(fontSize: 20,
                 fontWeight: FontWeight.bold),),
              ],
            )
           
      ),
    );
}
}