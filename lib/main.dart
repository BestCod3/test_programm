import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:test_programm/view/HomeView/homeView.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //     textTheme: TextTheme(displayLarge: TextStyle(color: Colors.orange))),
      home: HomeView(),
    );
  }
}
