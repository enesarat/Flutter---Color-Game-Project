import 'package:flutter/material.dart';
import 'dart:math';

class Layout3x3 extends StatefulWidget {
  @override
  _Layout3x3State createState() => _Layout3x3State();
}

class _Layout3x3State extends State<Layout3x3> {
  List myColors = [Colors.lightGreen,Colors.cyan,Colors.red,Colors.orange,Colors.pink,Colors.purple,Colors.teal,Colors.brown,Colors.yellow];
  Random randColor =new Random();
  Random randIdx =new Random();

  int colorId = 0;
  int c1=0,c2=1,c3=2,c4=3,c5=4,c6=5,c7=6,c8=7,c9=8;
  List c_arr = [1,2,3,4,5,6,7,8,9];
  int randC;
  List randNumbers = [1,2,3,4,5,6,7,8,9];
  
  
  void suffleNumber(){
    int index=0;
    while(index<10){
      int number = randIdx.nextInt(9);
      if(randNumbers.contains(number))
        continue;
      else
        randNumbers[index]=number;
      index++;
    }
  }/*
  List shuffle(List items) {
  var random = new Random();

  // Go through all elements.
  for (var i = items.length - 1; i > 0; i--) {

    // Pick a pseudorandom number according to the list length
    var n = random.nextInt(i + 1);

    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }

  return items;
}*/
  void changeBoxColor(){
    myColors.shuffle();

    colorId =randColor.nextInt(9);
    int i;
    for(i=0;i<9;i++){
      randNumbers[i]=myColors[i];
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
    /*c1=randColor.nextInt(9);
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c2=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c3=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c4=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c5=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c6=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c7=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c8=randC;}
    randC=randColor.nextInt(9);
    if(randC!=c8&&randC!=c7&&randC!=c6&&randC!=c5&&randC!=c4&&randC!=c3&&randC!=c2&&randC!=c1){ c9=randC;}
    */
  }

  int createRand(){
    return randIdx.nextInt(9);
  }

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
                title: Text('Color Detecting Game',style: TextStyle(fontSize: 20.0, fontFamily: 'Primetime',color:Colors.white),),
                centerTitle: true,
                backgroundColor: Colors.lightBlueAccent[200],
                automaticallyImplyLeading: false,
              ),
          Row(
            children: <Widget> [
              
              Expanded(
                child:Container(height: 80, color: Colors.grey[100],
                  child: Column(
                      children:[  
                        
                        Expanded(child: Container(
                          child:Text('Try choosing the right color match from the following!',style:TextStyle(color:Colors.grey[700])),
                          margin: EdgeInsets.all(0.0),
                          padding: EdgeInsets.fromLTRB(25.0,0.0,0.0,0.0),
                          alignment:Alignment.center,
                          ),
                        ),
                      ], 
                  ),
                ),
              ),
              Expanded(   
                  child:Container(height: 80,color: Colors.grey[100], 
                  padding: EdgeInsets.fromLTRB(60.0,0.0,0.0,0.0),
                  child: Row(
                  children:[  
                      Expanded(child: Container(
                        height: 50.0,
                        width: 50.0,
                        child: Card(
                          color:myColors[colorId],
                          elevation: 6.0,
                        ),
                      ),
                      ),
                      Expanded(child: Container(
                        child:Text('Find It!'),
                        margin: EdgeInsets.all(0.0),
                        padding: EdgeInsets.all(10.0),
                        alignment:Alignment.centerLeft,
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
                                        /*int idx;
                                        idx = createRand();*/
                                        //myColors.shuffle();
                                        return changeBoxColor();
                                        
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c1],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c2],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c3],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c4],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c5],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c6],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c7],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c8],
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
                                        /*int idx;
                                        idx = createRand();*/
                                        return changeBoxColor();
                                      });
                                      
                                    },
                                    child:Container(
                                      height:100,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:myColors[c9],
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
                    'Second Page',
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
