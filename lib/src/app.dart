import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home_app/src/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
