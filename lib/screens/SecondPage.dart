import 'package:bmi_project/controllers/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SecondPageView();
  }
}

class SecondPageView extends StatefulWidget {
  @override
  _SecondPageViewState createState() => _SecondPageViewState();
}

class _SecondPageViewState extends State<SecondPageView> {
  GetStorage box = GetStorage();

  @override
  Widget build(BuildContext context) {
      BmiController x = new BmiController();

      Text result = x.Interpretation(x.calculatebmi());
      

    return Scaffold(
        backgroundColor: Color(0xff090d1e),
        appBar: AppBar(
          title: Text("BMI Calculator"),
        ),
        body: SafeArea(
            child: Center(
              child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [  Text("Your Result", style: TextStyle( fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white)),
          Container(
             decoration: BoxDecoration(
                  color: Color(0xff0f1632),
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(20.0),
                      topRight: const Radius.circular(20.0),
                      bottomLeft: const Radius.circular(20.0),
                      bottomRight: const Radius.circular(20.0))),
                      width: 350,
                      height:250,
            child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                result,

                Text(x.calculatebmi2().round().toString(),style: TextStyle( fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white)),
                Text("Interpretation",style: TextStyle( fontSize: 40,fontWeight: FontWeight.bold, color: Colors.white))

              ],

            ),


          ),
             SizedBox(
              width: double.infinity,
              child: FlatButton(
                  onPressed: () => {
                           box.erase(),
                       Get.offAllNamed('/firstPage'),

      

                  },
                  color: Color(0xffFF4081),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "RECALCULATE",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  )),
            ),

             
          ],
          

        ),
            )));
  }
}
