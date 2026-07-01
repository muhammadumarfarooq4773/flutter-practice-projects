import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CONTAINER DEMO"),
      ),

      body: Center(
        child: Container(
          width: 250,
          height: 350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 33, 212, 243),
            borderRadius:BorderRadius.circular(20),
            border: Border.all(width: 3),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/UmaR.jpg"),
              ),
              SizedBox(height: 40,),

              Text("Muhammad Umar Farooq"),
              SizedBox(height: 10,),

              Text("Student-Id: 727967"),
              SizedBox(height: 10,),

              Text("Institute: Bano Qabil"),
            ],
          ),
        ),
      ),
    );
  }
}