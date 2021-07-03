import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenhight;
  static double? screenWidth;
  static double? defualtSize;
  static Orientation? orientation;

  void init(BuildContext context){
    _mediaQueryData =MediaQuery.of(context);
    screenhight = _mediaQueryData!.size.height;
    screenWidth = _mediaQueryData!.size.width;
    orientation = _mediaQueryData!.orientation;
  }

}
double getProportionateScreenHeight(double inputHeight){
 var screenHeight = SizeConfig.screenhight!;
 return (inputHeight / 812.0) * screenHeight;
}

double getProportionateScreenWidth(double inputWidth){
  var screenWidth = SizeConfig.screenhight!;
  return (inputWidth / 375.0) * screenWidth;
}
