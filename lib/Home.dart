import 'package:flutter/material.dart';
import 'Analysis.dart';
import 'dialogflow.dart';
import 'detection.dart';
import 'Sos.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<HomePage> {
  void customLaunch(command) async {
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BE SAFE"),
      ),



      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.blue,
              blurRadius: 10.0,
              spreadRadius: 1.0,
              offset: Offset(
                4.0,
                4.0,
              ),
            )
          ],
        ),
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlutterFactsChatBot()));
                      },
                      child: Text('Talk with Counselling Agent'),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detection()));
                      },
                      child: Text('Detection',),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                        
                      ),
                      
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sos()));
                      },
                      child: Text('Emergency message'),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    RaisedButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Analysis()));
                      },
                      child: Text('Predict Awareness level'),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                   
                                     
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
