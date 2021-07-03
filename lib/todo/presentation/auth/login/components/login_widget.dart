import 'package:flutter/material.dart';
import 'package:prabintodo/common/wigets/logo.dart';
import 'package:prabintodo/todo/presentation/auth/register/components/register_page.dart';
import 'package:prabintodo/todo/presentation/homescreen/home_page.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passwordTextEditingController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(children: [
          Logo(
            height: 200,
            width: 200,
            image: "assets/images/logo.png",
          ),
          Text("Todo"),
          Padding(
            padding: EdgeInsets.all(
              20.0,
            ),
            child: Column(
              children: [
                SizedBox(height: 1.0),
                TextFormField(
                  controller: emailTextEditingController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (!value.contains("@")){
                      return '@ Missing';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(fontSize: 14.0, fontFamily: ""),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 10.0),
                  ),
                  style: TextStyle(fontSize: 14.0),
                ),
                SizedBox(height: 7.0),
                TextFormField(
                  controller: passwordTextEditingController,
                 validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'enter password';
                    }
                    if (value.length  <=8 ){
                      return "enter 8 or more character ";
                    }
                    
                  },
                
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "password",
                    labelStyle: TextStyle(
                      fontSize: 14.0,
                    ),
                    hintStyle: TextStyle(color: Colors.blue, fontSize: 10.0),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')));
                      }

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => HomePage()));
                    },
                    child: Center(
                      child: Text(
                        "Login",
                        style:
                            TextStyle(fontSize: 18.0, fontFamily: "Brand-Bold"),
                      ),
                    )),
                SizedBox(height: 1.0),
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
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => RegisterPage()));
                  },
                  child: Text("Do not have an account? Sign up"),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
