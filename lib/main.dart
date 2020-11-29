import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'bindings/AppBindings.dart';
import 'screens/FirstPage.dart';
import 'screens/SecondPage.dart';



void main() async {
      await GetStorage.init();

  runApp(GetMaterialApp(

    theme: ThemeData(accentColor: Color(0xff111328),
    primaryColor: Color(0xff090d1e)),
    
    initialRoute: '/firstPage',
    getPages: [GetPage(name: 'firstPage', page:()=>FirstPage()),
    GetPage(name: 'secondPage', page:()=>SecondPage(),
    binding: AppBindings(),)
    ],

  ));
}


