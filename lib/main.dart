import 'package:flutter/material.dart';
import 'adv_gridview_buider.dart';

void main() {
  runApp(const MaterialApp(home: AdvGridViewBuilder()),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    String getName()
    {
      return "MUHAMMAD UMAR FAROOQ";
    }
    String getInstitue()
    {
      return "BANO QABIL RAWALPINDI";
    }

    String name = "Muhammad Umar Farooq";
    int age = 22;
    double height = 5.8;
    bool isStudent = true;
    
    return MaterialApp(
      home: Scaffold(
        
        body:Center(
          child:Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children:[
              Text("NAME=  $name"),
              Text("AGE=  $age"),
              Text("HEIGHT=  $height"),
              Text("STUDENT=  $isStudent"),
              Text("NAME==  ${getName()}"),
              Text("INSTITUTE==  ${getInstitue()}"),
            ],
          ),
        ),
      ),
    );
  }
}