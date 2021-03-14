import 'package:flutter/material.dart';
import 'Home.dart';
//import 'package:flutter/services.dart';

import 'dialogflow.dart';


void main() => runApp(Sos());

class Sos extends StatelessWidget {
  
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