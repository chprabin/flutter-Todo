import 'package:flutter/material.dart';
import 'package:prabintodo/common/utils/theme.dart';

import 'todo/presentation/splash/splash_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Todo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: SplashPage(),
    );
  }
}

