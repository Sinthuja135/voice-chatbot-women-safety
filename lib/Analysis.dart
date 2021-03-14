import 'package:flutter/material.dart';
//import 'package:womensafety/Home.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutter/services.dart';

import 'dialogflow.dart';

void main() => runApp(Analysis());

class Analysis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _launchURL() async {
      // String url="http://192.168.0.137";
     // const url = 'http://192.168.43.72:8000';
      const url= "http://192.168.43.72:8000/";

      if (await canLaunch(url)) {
        await launch(url);
        //  print(response.body);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      body: Container(
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
                        borderRadius: new BorderRadius.circular(30.0),
                      ),
                      onPressed: _launchURL,

//                         'http://192.168.43.73/';
//                         var url = 'http://192.168.1.102:8000';
// Future<String> getUnits(String category) async {
//     var response = await httpClient.get('$url');
//     return response.body;
// }

//      var client = createHttpClient();
//       client.get(new Uri.http("locahost:8000", "/category"));

                      //https://hpb.health.gov.lk/covid19-dashboard/
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
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
