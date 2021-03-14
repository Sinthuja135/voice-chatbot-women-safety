import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
   
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Counselling agent',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}