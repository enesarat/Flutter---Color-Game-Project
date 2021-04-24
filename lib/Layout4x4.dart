import 'package:flutter/material.dart';
import 'dart:async';
import 'FinalScore.dart';
import 'dart:math';

class Layout4x4 extends StatefulWidget {
  @override
  _Layout4x4State createState() => _Layout4x4State();
}

class _Layout4x4State extends State<Layout4x4> {
  List myColors = [
    Colors.lightGreen,Colors.cyan,Colors.red,Colors.orange,Colors.pink,Colors.purple,
    Colors.teal,Colors.brown,Colors.yellow,Colors.brown[400],Colors.pinkAccent,Colors.blueAccent,Colors.indigo,
    Colors.indigoAccent[400],Colors.greenAccent[400],Colors.limeAccent[400]
  ];
  Random randColor =new Random();
  Timer time;
  int score=0;
  int check_error=0;
  int check_color=0;
  int colorId = 0;
  int second=60;
  Color nextColor,checkColor;
  Color c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16;

  void initState() {
    super.initState();
    changeBoxColor();
    WidgetsBinding.instance.addPostFrameCallback((_) 
    { 
      timeStarter();
    });
  }

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
          MaterialPageRoute(builder: (context) => FinalScore(score,4,1)));
        }
      });
    });
  }

  void stopTime(){
    time.cancel();
  }

  void changeBoxColor(){
    myColors.shuffle();
    colorId =randColor.nextInt(16);
    checkColor=myColors[colorId];

    if(check_color==0){
      nextColor=checkColor;
      check_color++;
    }
    else if(nextColor==checkColor){       // here we make double check
      colorId =randColor.nextInt(16);
      checkColor=myColors[colorId];
      if(checkColor==nextColor){          // after first color fix change if the colors are still the same  
        colorId =randColor.nextInt(16);
        checkColor=myColors[colorId];
        nextColor=checkColor;             // a new color is assigned again 
      }
      else{
        nextColor=checkColor;             // If the colors are still not the same, the color assignment is complete 
      }      
    }
    else
    {
      nextColor=checkColor;
    }

    c1=myColors[0];
    c2=myColors[1];
    c3=myColors[2];
    c4=myColors[3];
    c5=myColors[4];
    c6=myColors[5];
    c7=myColors[6];
    c8=myColors[7];
    c9=myColors[8];
    c10=myColors[9];
    c11=myColors[10];
    c12=myColors[11];
    c13=myColors[12];
    c14=myColors[13];
    c15=myColors[14];
    c16=myColors[15];
  }

  void scoreCounter(Color c){
    if(c==myColors[colorId])
      score=score+5;
    else{
      check_error+=1;
      if(check_error>0){
        stopTime();
        Navigator.pop(context);
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => FinalScore(score,4,2)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget> [
          
          AppBar(
                title: Text('Color Game',style: TextStyle(fontSize: 24.0,color:Colors.white, fontWeight: FontWeight.bold),),
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
                        ),
                      ),
                      Expanded(child: Container(
                          height: 56.0,
                          width: 60.0,
                          margin: EdgeInsets.fromLTRB(0.0,10.0,46.0,4.0),
                          decoration: BoxDecoration(
                            borderRadius:BorderRadius.circular(8.96),
                            color:nextColor,
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
                                    buildColorBox(c1),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c2),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c3),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c4),
                                  ],
                                ),
                            ]
                          ),
                        ),),
                        Flexible(flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                               Column(
                                  children: [
                                    buildColorBox(c5),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c6),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c7),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c8),
                                  ],
                                ),
                            ]
                          ),
                        ),),
                        Flexible(flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Column(
                                  children: [
                                    buildColorBox(c9),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c10),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c11),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c12),
                                  ],
                                ),
                            ]
                          ),
                        ),),
                        Flexible(flex:1,child:Container(
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:<Widget>[
                                Column(
                                  children: [
                                    buildColorBox(c13),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c14),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c15),
                                  ],
                                ),
                              Column(
                                  children: [
                                    buildColorBox(c16),
                                  ],
                                ),
                            ]
                          ),
                        ),
                      ),
                  ],
                ),
                ),
              ),
            ),
          ),
          
  /*------------------------------- BODY END LINE --------------------------------*/ 

          Container(
            color:Colors.grey[100],
            alignment:Alignment.center,
            child:Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red[600]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      )
                    )
                  ),
                  child: Text(
                    'END THE GAME',
                    style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.w400,),
                  ),
                  onPressed: () {
                    stopTime();
                    Navigator.pop(context);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FinalScore(score,4,3)));
                  },
                ),
              ],
            ),            
          ),
          Flexible(child:Container(color:Colors.grey[100],height: 100,))          
        ],
      ),
    );
  }

  TextButton buildColorBox(Color boxColor) {
    return TextButton(
      onPressed:(){
        setState(() {
          //timeStarter();
          scoreCounter(boxColor);
          print(score);
          changeBoxColor();
          
        });
        
      },
      child:Container(
        height:70,width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.all(5.6),
        padding: EdgeInsets.all(0.0),
        decoration: BoxDecoration(
          color:boxColor,
          borderRadius:BorderRadius.circular(11.2),
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
    );
  }
}
