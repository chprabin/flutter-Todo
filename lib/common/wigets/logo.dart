import 'package:flutter/material.dart';
import 'package:prabintodo/common/utils/size_config.dart';

class Logo extends StatelessWidget {
  const Logo({ Key? key, required this.image, required this.height, required this.width }) : super(key: key);
  final String image;
  final double height;
  final double width;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Image.asset(
       image,
        height: getProportionateScreenHeight(height),
        width: getProportionateScreenWidth(width),
      )
    );
  }
}