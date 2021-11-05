import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_api_ddd/presentation/_bindings/home_bindings.dart';
import 'package:number_api_ddd/presentation/view/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: HomeBinding(),
      home: HomePage(),
    );
  }
}
