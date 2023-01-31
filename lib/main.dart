import 'package:flutter/material.dart';
import 'package:toku/screens/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toku',
      theme: ThemeData(
        //rgb(245, 110, 179)
        primarySwatch:Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}


