import 'package:flutter/material.dart';
import 'package:prabintodo/todo/presentation/auth/login/components/login_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page", style: TextStyle(color: Colors.black),), centerTitle: true, automaticallyImplyLeading: false,
      ),
       body: LoginWidget
       (),
    );
  }
}