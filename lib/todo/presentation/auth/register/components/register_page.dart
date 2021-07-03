import 'package:flutter/material.dart';
import 'package:prabintodo/todo/presentation/auth/register/components/register_widget.dart';



class RegisterPage extends StatelessWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register Page", style: TextStyle(color: Colors.black),), centerTitle: true, automaticallyImplyLeading: false,
      ),
       body: RegisterWidget(),
    );
  }
}