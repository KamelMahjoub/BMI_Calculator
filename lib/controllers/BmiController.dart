import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class BmiController extends GetxController{

  double bmi = 0 ;
  int weight = 0;
  double height;
  GetStorage box = GetStorage();



  @override
  void onInit(){
    weight =box.read("weight");
    height=box.read("height");
  }
//double get myheight => height;
get heightvalue =>  height=box.read("height");
get weightvalue => weight=box.read("weight");
calculatebmi() => weightvalue/(heightvalue * (heightvalue));
calculatebmi2() => bmi = weightvalue/(heightvalue * (heightvalue));




Text Interpretation(double bmi)
{
  if (bmi>25)
  {
      return Text("Overweight", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red));  
  }
  else {
    if(bmi<18.5)
    {
      return Text("Underweight", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red));
    }
    else 
    {
      return Text("Normal Weight", style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.lightGreen));
    }

  }
}






}