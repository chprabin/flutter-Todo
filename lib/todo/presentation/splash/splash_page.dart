import 'package:flutter/material.dart';
import 'package:prabintodo/common/utils/size_config.dart';
import 'package:prabintodo/todo/presentation/splash/components/splash_widget.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SplashWidget(),
      
    );
  }
}