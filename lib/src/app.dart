import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/app_them.dart';
import 'pages/home.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: Home(),
    );
  }
}
