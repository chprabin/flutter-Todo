import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prabintodo/common/utils/size_config.dart';
import 'package:prabintodo/common/wigets/logo.dart';
import 'package:prabintodo/todo/presentation/auth/login/login_page.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({ Key? key }) : super(key: key);

  @override
  _SplashWidgetState createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        
        children: [
          SizedBox(height: getProportionateScreenHeight(150)),
          Logo(image: 'assets/images/logo.png', height: 250, width: 250),
          SizedBox(height: getProportionateScreenHeight(20)),

          CircularProgressIndicator(),

        ],
        
      ),
    );
  }
}