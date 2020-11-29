import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_storage/get_storage.dart';
import 'SecondPage.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FirstPageView();
  }
}

class FirstPageView extends StatefulWidget {
  FirstPageView({Key key}) : super(key: key);

  @override
  _FirstPageViewState createState() => _FirstPageViewState();
}

class _FirstPageViewState extends State<FirstPageView> {
  int myheight = 20;
  int myweight = 0;
  int age = 0;
  bool male = false;
  bool female = false;
  GetStorage box = GetStorage();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff090d1e),
      appBar: AppBar(title: Text("BMI Flutter Calculator".tr)),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  
                  margin: EdgeInsets.all(20),
                  child: FlatButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0)),
                      onPressed: () => { 
                        setState(() {
                          if(male == false)
                          {
                            if(female == false) 
                            {
                              male=true;
                            }     
                            else {
                              female = false ;
                              male = true ;
                            }                
                          }
                          else
                            male=false;
                        }),
                        print(male),
                        print(female),
                      },
                      color:male?Color(0xff40ffbe):Color(0xffFF4081),
                      padding: EdgeInsets.all(20),
                      child: Column(
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(FontAwesomeIcons.mars),
                          Text(
                            "  Male  ",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      )),
                ),
                FlatButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: () => {
                      setState(() {
                      
                          if(female == false)
                          {
                            if(male == false) 
                            {
                              female=true;
                            }     
                            else {
                              male = false ;
                              female = true ;
                            }                
                          }
                          else
                            female=false;
                        }),
                        print(male),
                        print(female),
                      },
                      color:female?Color(0xff40ffbe):Color(0xffFF4081),
                    padding: EdgeInsets.all(20),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Icon(FontAwesomeIcons.venus),
                        Text(
                          "Female",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xff0f1632),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0))),
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(
                    '${myheight.round()} cm',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Slider(
                    value: myheight.toDouble(),
                    min: 0,
                    max: 300,
                    divisions: 300,
                    label: myheight.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                       myheight = value.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
            Container(
              child: Row(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0f1632),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(20.0),
                          topRight: const Radius.circular(20.0),
                          bottomLeft: const Radius.circular(20.0),
                          bottomRight: const Radius.circular(20.0))),
                  margin: EdgeInsets.all(4),
                  child: Column(children: [
                    Text(
                      "Weight : ",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ),
                    Text(
                      '${myweight} Kg',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Row(children: [
                      RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            if (myweight <= 0)
                              myweight = 0;
                            else
                              myweight--;
                          });
                        },
                        elevation: 2.0,
                        fillColor: Color(0xffFF4081),
                        child: Icon(
                          Icons.remove,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(10.0),
                        shape: CircleBorder(),
                      ),
                      RawMaterialButton(
                        onPressed: () {
                          setState(() {
                            myweight++;
                          });
                        },
                        elevation: 2.0,
                        fillColor: Color(0xffFF4081),
                        child: Icon(
                          Icons.add,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(10.0),
                        shape: CircleBorder(),
                      )
                    ])
                  ]),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff0f1632),
                            borderRadius: new BorderRadius.only(
                                topLeft: const Radius.circular(20.0),
                                topRight: const Radius.circular(20.0),
                                bottomLeft: const Radius.circular(20.0),
                                bottomRight: const Radius.circular(20.0))),
                        child: Column(children: [
                          Text(
                            "Age : ",
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                          Text(
                            '${age} years old',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Row(children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (age <= 0)
                                    age = 0;
                                  else
                                    age--;
                                });
                              },
                              elevation: 2.0,
                              fillColor: Color(0xffFF4081),
                              child: Icon(
                                Icons.remove,
                                size: 35.0,
                              ),
                              padding: EdgeInsets.all(10.0),
                              shape: CircleBorder(),
                            ),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              elevation: 2.0,
                              fillColor: Color(0xffFF4081),
                              child: Icon(
                                Icons.add,
                                size: 35.0,
                              ),
                              padding: EdgeInsets.all(10.0),
                              shape: CircleBorder(),
                            )
                          ])
                        ]),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                    box.write("weight", myweight),
                    box.write("height",myheight/100),
                    print(myheight),
                    print(myweight),
                    Get.toNamed('/secondPage')


                  },
                  color: Color(0xffFF4081),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "CALCULATE",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
