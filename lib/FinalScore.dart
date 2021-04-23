import 'package:flutter/material.dart';
import 'Layout3x3.dart';
import 'Layout4x4.dart';
import 'Layout5x5.dart';
import 'main.dart';


class FinalScore extends StatefulWidget {
   final int result;
   final int layout;
   final int msg;
   const FinalScore(this.result,this.layout,this.msg);
  @override
  _FinalScoreState createState() => _FinalScoreState();
}

class _FinalScoreState extends State<FinalScore> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[400],      
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
                      decoration: BoxDecoration(
                        gradient: RadialGradient(
                          colors: [Colors.white, Colors.white],
                          focal: Alignment(0.0, 0.0),
                          focalRadius: 4,
                        ),
                      ),
                      child: Text(
                        'GAME OVER',textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            //color: Colors.white,
                            foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.red[600],                            
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if(widget.msg==1)
              Container(
                alignment: Alignment.bottomCenter,
                color:Colors.white,
                padding:EdgeInsets.only(bottom:8,top:8),
                margin:EdgeInsets.only(bottom:20),
                child: Text("Time is up!",textAlign: TextAlign.center,style:TextStyle(color:Colors.red[700],fontSize: 20.0,))
              )
            else if(widget.msg==2)
              Container(
                alignment: Alignment.bottomCenter,
                color:Colors.white,
                padding:EdgeInsets.only(bottom:8,top:8),
                margin:EdgeInsets.only(bottom:20),
                child: Text("You selected wrong color!",textAlign: TextAlign.center,style:TextStyle(color:Colors.red[700],fontSize: 20.0,))
              )
            else
              Container(
                alignment: Alignment.bottomCenter,
                color:Colors.white,
                padding:EdgeInsets.only(bottom:8,top:8),
                margin:EdgeInsets.only(bottom:20),
                child: Text("You left the game!",textAlign: TextAlign.center,style:TextStyle(color:Colors.red[700],fontSize: 20.0,))
              ),
            Expanded(
              child: Column(
              children: [
                Expanded(
                  child: Container(
                    width:190,
                    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                    height: 60,
                    child: Text(
                      'SCORE:',textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color:Colors.white,                          
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
                              '${widget.result}',textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 50.0,
                                  color: Colors.black,
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
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
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
                                  style: TextStyle(color: Colors.lightBlueAccent[400],fontWeight: FontWeight.w700,fontSize: 18),

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
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  )
                                )
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context){
                                        if(widget.layout==3)
                                          return Layout3x3();
                                        else if(widget.layout==4)
                                          return Layout4x4();
                                        else
                                          return Layout5x5();
                                      }),
                                );
                              },
                              child: Container(
                                height: 100,
                                child:Center(
                                  child: Text(
                                    "REPLAY",
                                    textAlign: TextAlign.center,
                                  style: TextStyle(color:Colors.greenAccent[400],fontWeight: FontWeight.w700,fontSize: 18),
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
      ),
    );
  }
}
