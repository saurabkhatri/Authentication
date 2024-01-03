import 'package:authentication/features/authentication/login_page.dart';
import 'package:flutter/material.dart';
//import 'package:login_one/features/authentication/login_page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // debugShowMaterialGrid: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,

      ),
      home:LoginPage(),

    );


  }
}




///Stackoverflow

///1. Stateless -->stless
///2. Statefull-->stful
