import 'package:flutter/material.dart';

import 'appbar_theme.dart';
import 'input_decoration_theme.dart';
import 'text_theme.dart';


ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'TitilliumWeb-Regular',
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,

  );
}