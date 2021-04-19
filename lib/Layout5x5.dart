import 'package:flutter/material.dart';


class Layout5x5 extends StatelessWidget {
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
                          color: Colors.deepOrangeAccent,
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
                top:10.0,
                right: 20.0,
                left: 20.0,
                bottom:40.0,),
            child: Container(
              height: 430,
              width: MediaQuery.of(context).size.width,
              child: Card(
                color: Colors.white,
                elevation: 6.0,
                
                child:Padding(
                  padding: const EdgeInsets.all(15),
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
                                      print('hello');
                                    },
                                    child:Container(
                                      height:53,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:Colors.grey[200],
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
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                  TextButton(
                                    onPressed:(){
                                      print('hello');
                                    },
                                    child:Container(
                                      height:53,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:Colors.grey[200],
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
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                  TextButton(
                                    onPressed:(){
                                      print('hello');
                                    },
                                    child:Container(
                                      height:53,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:Colors.grey[200],
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
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                  TextButton(
                                    onPressed:(){
                                      print('hello');
                                    },
                                    child:Container(
                                      height:53,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:Colors.grey[200],
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
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                  TextButton(
                                    onPressed:(){
                                      print('hello');
                                    },
                                    child:Container(
                                      height:53,width: double.infinity,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.all(8),
                                      padding: EdgeInsets.all(0.0),
                                      decoration: BoxDecoration(
                                        color:Colors.grey[200],
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
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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
                                
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height:53,width: double.infinity,
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.all(8),
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                      color:Colors.grey[200],
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