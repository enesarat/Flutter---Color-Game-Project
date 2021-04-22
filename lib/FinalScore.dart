import 'package:flutter/material.dart';
import 'Layout3x3.dart';
import 'Layout4x4.dart';
import 'Layout5x5.dart';
import 'main.dart';


class FinalScore extends StatefulWidget {
  @override
  _FinalScoreState createState() => _FinalScoreState();
}

class _FinalScoreState extends State<FinalScore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Color Detecting Game',style: TextStyle(fontSize: 20.0, fontFamily: 'Primetime',color:Colors.white),),
      ),*/
      body: Container(
       margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 15.0),

        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
                      //padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 3.0),
                 
                      child: Text(
                        'GAME OVER',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[500],
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
                    width:190,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    //padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 3.0),
                    height: 60,
                    
                    child: Text(
                      'SCORE:',textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color:Colors.lightBlue[700],                          
                      ),
                    ),
                  ),
                  
                ),
                Container(
                  child: Container(
                      height: 150,
                      margin: EdgeInsets.fromLTRB(0.0,0.0,0.0,20.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        child:Center(
                          child: Text(
                              '60',textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.deepPurple[600],
                                  fontWeight:FontWeight.bold,
                                  ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius:BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.50,
                                blurRadius: 5,
                                offset: Offset(0,4), 
                              ),
                            ],
                          ),
                          
                          
                      ),
                          
                  ),

                ),  
                
              ],
              ),
            ),
            Expanded(child: 
            Center(
                  child: Container(
                    height: 90,
                    width: 350,
                    margin: EdgeInsets.fromLTRB(0.0,0.0,0.0,50.0),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(12.0),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.green),

                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    side: BorderSide(color: Colors.blue[500])
                                  )
                                )
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyApp()),
                                );
                              },
                              child: Container(
                              height: 100,
                              child:Center(
                                child: Text(
                                  "MAIN MENU",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18),

                                ),
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
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                    side: BorderSide(color: Colors.blue[500])
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
                                height: 100,
                                child:Center(
                                  child: Text(
                                    "QUIT",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
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
                ),)
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
