import 'package:flutter/material.dart';
import 'package:prabintodo/common/wigets/logo.dart';
import 'package:prabintodo/todo/presentation/auth/login/login_page.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({ Key? key }) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  final TextEditingController emailTextEditingController = TextEditingController();
  final TextEditingController passwordTextEditingController = TextEditingController();
  final TextEditingController fullNameTextEditingController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
        children: [
            Logo(height: 200, width: 200 , image: "assets/images/logo.png",),
            Text("Todo"),
            Padding(padding: EdgeInsets.all(20.0,
              
            ),
            child: Column(
              children:[
                SizedBox(height: 1.0),
                TextField(
                  controller: fullNameTextEditingController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "FullName",
                    labelStyle: TextStyle(fontSize: 14.0, fontFamily: ""),
                    hintStyle: 
                    TextStyle(color: Colors.grey, fontSize: 10.0),
                   
                  ),
                   style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 3.0),
                TextField(
                  controller: emailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 14.0, fontFamily: ""),
                    hintStyle: 
                    TextStyle(color: Colors.grey, fontSize: 10.0),
                   
                  ),
                   style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 7.0),
                TextField(
                  controller: passwordTextEditingController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "password",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: 
                     TextStyle(color: Colors.blue, fontSize: 10.0),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: () async{},
                  child: Center(child: Text("Login",
                  style: TextStyle(fontSize: 18.0, fontFamily: "Brand-Bold")
                  ,)
                  ,)
                   ),
                     SizedBox(height: 3.0),
                     Text(
                     'or Login with',
                     style: TextStyle(color: Colors.grey),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         IconButton(
                           icon: Icon(Icons.email, color: Colors.black),
                           onPressed: () {}),
                           IconButton(
                           icon: Icon(Icons.facebook, color: Colors.black),
                           onPressed: () {}),
                       ],
                     ),

                     TextButton(onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));

                     },
                      child: Text("Already Member? Login"),)


              ],),
            ),
        ]
      ),
    );
  }
}