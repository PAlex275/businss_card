import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(BizCardApp());
}

class BizCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber[700],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/circle_person.png'),
                    radius: 100,
                  ),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: Colors.amber[200],
                    width: 5.0,
                  ),
                ),
              ),
              Text(
                'Petrisor Alex',
                style: TextStyle(
                  fontFamily:'Orelega One',
                  fontSize: 32,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                'Junior Software Engineer',
                style: TextStyle(
                  fontFamily:'Orelega One',
                  fontSize: 18,
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 2.0,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  height: 2.0,
                  color: Colors.amber[600],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),

                    side: BorderSide(width: 5,color:Colors.amber[100])
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                  ),
                  title: Text(
                    'alex_petrisor2001@yahoo.com',
                    style: TextStyle(
                      fontFamily:'Orelega One',
                      //fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),

                    side: BorderSide(width: 5,color:Colors.amber[100])
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                  ),
                  title: Text(
                    '+40770916922',
                    style: TextStyle(
                      fontFamily:'Orelega One',
                      //fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Divider(
                  thickness: 1.0,
                  height: 5.0,
                  color: Colors.amber[300],
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      topRight: Radius.circular(7),
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),

                    side: BorderSide(width: 1.5,color:Colors.amber[100])
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:'Portfolio:',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontFamily:'Orelega One',
                            ),
                          ),
                          TextSpan(
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                //fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                                fontFamily:'Orelega One',
                            ),
                            text: 'www.petrisoralex.me',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (await canLaunch("https://www.petrisoralex.me")) {
                                  await launch("https://www.petrisoralex.me");
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7),
                      topRight: Radius.circular(7),
                      topLeft: Radius.circular(7),
                      bottomLeft: Radius.circular(7),
                    ),

                    //side: BorderSide(width: 1.5,color:Colors.amber[100])
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:'Github Profile:',
                            style: TextStyle(
                              //fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                              fontFamily:'Orelega One',
                            ),
                          ),
                          TextSpan(
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              letterSpacing: 2.0,
                              fontFamily:'Orelega One',
                            ),
                            text: 'PAlex275',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                if (await canLaunch("https://github.com/PAlex275?tab=repositories")) {
                                  await launch("https://github.com/PAlex275?tab=repositories");
                                }
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
