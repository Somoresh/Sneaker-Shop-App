import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/theme_helper.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  bool rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Image.asset('lib/images/softic.png'),
              ),
              SafeArea(
                  child: Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Form(
                      child: Column(
                        children: [
                          TextField(
                            decoration: ThemeHelper().textInputDecoration(
                              "User Name",
                              "Enter Your user name",
                              //fillColor: Colors.white,
                              //filled: true),
                            ),
                          ),
                          SizedBox(height: 30.0),
                          TextField(
                            obscureText: true,
                            decoration: ThemeHelper().textInputDecoration(
                              "Password",
                              "Enter Your Password",
                              //fillColor: Colors.white,
                              //filled: true),
                            ),
                          ),
                          SizedBox(height: 13.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Remember Me"),
                              Checkbox(
                                value: rememberMe,
                                onChanged: (bool? newValue) {
                                  rememberMe = newValue!;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: ElevatedButton(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(40, 15, 40, 15),
                                child: Text(
                                  "Sign In".toUpperCase(),
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            //alignment: Alignment.topLeft,
                            child: Text("Forgot your password?"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text.rich(TextSpan(children: [
                              TextSpan(text: "Dont't have an account?"),
                              TextSpan(
                                  text: "Create",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  HomePage()));
                                    })
                            ])),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
