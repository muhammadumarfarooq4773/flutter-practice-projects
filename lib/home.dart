import 'package:flutter/material.dart';
import 'profile1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String nameh = "";
  String studentIdh = "";
  String instituteh = "";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("HOME-SCREEN"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome !", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            
            TextField(
              decoration: const InputDecoration(
                labelText: "NAME",
                border: OutlineInputBorder(),
              ),
              onChanged:(value) {
                setState(() {
                  nameh=value;
                });
              },
            ),
            const SizedBox(height: 10,),

            TextField(
              decoration: const InputDecoration(
                labelText: "STUDENT-ID",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  studentIdh=value;
                });
              },
            ),
            const SizedBox(height: 10,),

            TextField(
              decoration: const InputDecoration(
                labelText: "INSTITUTE",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  instituteh=value;
                });
              },
            ),
            const SizedBox(height: 25,),

            ElevatedButton(
              onPressed:() {
                if (nameh.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("Please Enter Your Name"),),);
                        return;
                }
                if (studentIdh.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please Enter Student-ID"),),);
                    return;
                }
                if (instituteh.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please Enter Institute Name"),),);
                    return;
                }
                
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) =>  Profile1(
                   name: nameh,
                   studentId: studentIdh,
                   institute: instituteh,),
                   ),
                   );
            },
            child: const Text("Open Profile"),
            ),
          ],
        ),
      ),
    );
  }
}