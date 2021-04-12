// -----------  Developed By Enes Arat 
// // --------  © All Rights Reserved  

import 'package:flutter/material.dart';
import 'Layout3x3.dart';
import 'Layout4x4.dart';
import 'Layout5x5.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Color Detecting Game',style: TextStyle(fontSize: 20.0, fontFamily: 'Primetime',color:Colors.white),),
      ),*/
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Color Detecting Game',textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Primetime',
                          color: Colors.lightBlue,
                          ),
                    ),
                    
                  ),
                ],
                
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 80,
                  width: 300,
                  margin: EdgeInsets.fromLTRB(0.0,0.0,0.0,150.0),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Layout3x3()),
                              );
                            },
                            child: Container(
                              child: Text(
                                "3x3\nLayout",
                                textAlign: TextAlign.center,
                              ),
                              margin: EdgeInsets.all(0.0),
                              padding:
                                  EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Layout4x4()),
                              );
                            },
                            child: Container(
                              child: Text(
                                "4x4\nLayout",
                                textAlign: TextAlign.center,
                              ),
                              margin: EdgeInsets.all(0.0),
                              padding:
                                  EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(12.0),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Layout5x5()),
                              );
                            },
                            child: Container(
                              child: Text(
                                "5x5\nLayout",
                                textAlign: TextAlign.center,
                              ),
                              margin: EdgeInsets.all(0.0),
                              padding:
                                  EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}