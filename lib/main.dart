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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

      backgroundColor: Colors.lightBlueAccent[400],
      body: Container(
       margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),

        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
                      child:
                      Container(
                        color:Colors.white,
                        alignment: Alignment.center,
                        height: 100,
                        child:RichText(
                          text: TextSpan(
                            text: 'C',
                            style: TextStyle(fontSize: 52,color:Colors.blue,fontWeight: FontWeight.w800,),
                            children: <TextSpan>[
                              TextSpan(text: 'O',style: TextStyle(color: Colors.pink,)),
                              TextSpan(text: 'L',style: TextStyle(color: Colors.yellow[600],)),
                              TextSpan(text: 'O',style: TextStyle(color: Colors.green,)),
                              TextSpan(text: 'R ',style: TextStyle(color: Colors.orange,)),
                              TextSpan(text: ' G',style: TextStyle(color: Colors.deepPurple,)),
                              TextSpan(text: 'A',style: TextStyle(color: Colors.lightBlueAccent[400],)),
                              TextSpan(text: 'M',style: TextStyle(color: Colors.pinkAccent[400],)),
                              TextSpan(text: 'E',style: TextStyle(color: Colors.greenAccent[400],)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
              children: [
                Expanded(
                    child: Container(
                      width:180,
                      margin: EdgeInsets.fromLTRB(0.0, 80.0, 0.0, 0.0),
                      height: 80,
                      
                      child: Text(
                        'Select a difficulty level to start the game!',textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          color:Colors.white,  
                          fontWeight: FontWeight.w300,                        
                        ),
                      ),
                    ),
                  ),
                Center(
                  child: Container(
                    height: 80,
                    width: 350,
                    margin: EdgeInsets.fromLTRB(0.0,0.0,0.0,100.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  )
                                )
                              ),
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
                                  style: TextStyle(color: Colors.lightBlueAccent[400],fontWeight: FontWeight.w700),
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
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  )
                                )
                              ),
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
                                  style: TextStyle(color: Colors.lightBlueAccent[400],fontWeight: FontWeight.w700),
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
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                  )
                                )
                              ),
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
                                  style: TextStyle(color: Colors.lightBlueAccent[400],fontWeight: FontWeight.w700),
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
              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
