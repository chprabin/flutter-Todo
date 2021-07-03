import 'package:flutter/material.dart';
import 'package:prabintodo/todo/presentation/homescreen/components/home_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page", style: TextStyle(color: Colors.black),), centerTitle: true, automaticallyImplyLeading: false,
      ),
       body: HomeWidget(),
    );
  }
}