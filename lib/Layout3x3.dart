import 'package:flutter/material.dart';
import 'dart:async';
import 'FinalScore.dart';

import 'dart:math';

class Layout3x3 extends StatefulWidget {
  @override
  _Layout3x3State createState() => _Layout3x3State();
}

class _Layout3x3State extends State<Layout3x3> {
  List myColors = [Colors.lightGreen,Colors.cyan,Colors.red,Colors.orange,Colors.pink,Colors.purple,Colors.teal,Colors.brown,Colors.yellow];
  Random randColor =new Random();
  Timer time;
  //Random randIdx =new Random();
  int score=0;
  int check_error=0;
  int colorId = 0;
  int second=60;
  Color c1,c2,c3,c4,c5,c6,c7,c8,c9;

  void timeStarter() {
    if (time != null) {
      time.cancel();
    }
    time = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (second > 0) {
          second--;
        } else {
          time.cancel();
          Navigator.pop(context);
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => FinalScore()));
        }
      });
    });
  }

  void stopTime(){
    time.cancel();
  }


  void changeBoxColor(){
    myColors.shuffle();

    colorId =randColor.nextInt(9);
    
    c1=myColors[0];
    c2=myColors[1];
    c3=myColors[2];
    c4=myColors[3];
    c5=myColors[4];
    c6=myColors[5];
    c7=myColors[6];
    c8=myColors[7];
    c9=myColors[8];
  }

  void scoreCounter(Color c){
    if(c==myColors[colorId])
      score=score+5;
    else{
      check_error+=1;
      if(check_error>1){
        print('hata');
        stopTime();
        Navigator.pop(context);
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => FinalScore()));
      }
    }
  }

  
  /*int createRand(){
    return randIdx.nextInt(9);
  }*/

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget> [
          /*
          Row(
            children: <Widget> [
              Expanded(
                child:Image.asset('img/image1.jpg'),
                 
              ),
            ],
          ),*/
          AppBar(
                title: Text('Color Detecting Game',style: TextStyle(fontSize: 24.0, /*fontFamily: 'Primetime',*/color:Colors.white, fontWeight: FontWeight.bold),),
                centerTitle: true,
                backgroundColor: Colors.lightBlueAccent[200],
                automaticallyImplyLeading: false,
              ),
          Row(
            children: <Widget> [
              Expanded(
                child:Container(height: 80, color: Colors.grey[100],
                  child: Row(
                      children:[  
                        Expanded(child: Container(
                          child:Text('Time:',style:TextStyle(color:Colors.grey[700],fontSize: 25.0,)),
                          margin: EdgeInsets.fromLTRB(20.0,10.0,0.0,0.0),
                          padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                          alignment:Alignment.center,
                          ),
                        ),
                        Expanded(child: Container(
                          child:Text('$second',style:TextStyle(color:Colors.grey[700],fontSize: 40.0,fontWeight: FontWeight.bold)),
                          margin: EdgeInsets.fromLTRB(0.0,10.0,20.0,0.0),
                          padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                          alignment:Alignment.center,
                          ),
                        ),
                      ], 
                  ),
                ),
              ),
              Expanded(   
                  child:Container(height: 80,color: Colors.grey[100], 
                  padding: EdgeInsets.fromLTRB(0.0,0.0,0.0,0.0),
                  child: Row(
                  children:[  
                      Expanded(child: Container(
                        child:Text('Next:',style:TextStyle(color:Colors.grey[700],fontSize: 25.0,)),
                        margin: EdgeInsets.fromLTRB(10.0,10.0,0.0,0.0),
                        padding: EdgeInsets.all(10.0),
                        //alignment:Alignment.centerLeft,
                        ),
                      ),
                      Expanded(child: Container(
                          height: 66.0,
                          width: 70.0,
                          margin: EdgeInsets.fromLTRB(0.0,10.0,35.0,0.0),
                          child: Card(
                            color:myColors[colorId],
                            elevation: 6.0,
                          ),
                        ),
                      ),
                    ], 
                  ),
                ),
              ),  
            ],
          ),

  /*------------------------------- BODY START LINE --------------------------------*/ 
          Container(
            color: Colors.grey[100],
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(
                /*top: MediaQuery.of(context).size.height * .1,*/
                top:20.0,
                right: 10.0,
                left: 10.0,
                bottom:50.0,),
            child: Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white,
                elevation: 6.0,
                
                child:Padding(
                  padding: const EdgeInsets.all(6),
                  child:Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                        Flexible(flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c1);
                                        print(score);
                                        changeBoxColor();
                                        
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c1,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c2);
                                        print(score);
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c2,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c3);
                                        print(score);
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c3,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                            ]
                          ),
                        ),),
                        Flexible(
                          
                          flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                               Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c4);
                                        print(score);
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c4,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c5);
                                        print(score);
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c5,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c6);
                                        print(score);
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c6,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                            ]
                          ),
                        ),),
                        Flexible(
                          flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c7);
                                        print(score);
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c7,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c8);
                                        print(score);
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c8,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed:(){
                                      setState(() {
                                        timeStarter();
                                        scoreCounter(c9);
                                        print(score);
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:c9,
                                        borderRadius:BorderRadius.circular(15),
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
                                ],
                              ),
                            ]
                          ),
                        ),),
                  ],
                  
                ),
                ),
              ),
            ),
          ),
          
  /*------------------------------- BODY END LINE --------------------------------*/ 

          Container(
            color:Colors.grey[200],
            
            alignment:Alignment.center,
            child:Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                        side: BorderSide(color: Colors.blue[500])
                      )
                    )
                  ),
                  child: Text(
                    'End the game',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            
          ),
          
        ],
      ),
    );
  }
}
