import 'package:flutter/material.dart';
import 'Home.dart';
//import 'package:flutter/services.dart';

void main() => runApp(Detection());

class Detection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      title: 'Weapon detection',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}