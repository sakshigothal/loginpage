import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginpage/forgotpassword.dart';

import 'signup.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var rem = true;
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String msg = "";

  get suffixIcon => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[200],
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              // begin: Alignment.topCenter,
              // end: Alignment.bottomCenter,
              colors: [
                Colors.pink,
                Colors.cyan,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Form",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 40, 16, 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        controller: username,
                        style: TextStyle(
                  color: Colors.white
                ),
                        decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white),
                            // prefixIcon: Icon(Icons.verified_user),
                            // suffixIcon: Icon(Icons.check),
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscuringCharacter: "*",
                        obscureText: true,
                        controller: password,
                        style: TextStyle(
                  color: Colors.white
                ),
                        decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                          //abelText: "PASSWORD",
                          // prefixIcon: Icon(Icons.password),
                          // suffixIcon: Icon(
                          //   Icons.check,
                          //   color: Colors.red,
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: rem,
                            onChanged: (value) {
                              setState(() {
                                rem = value!;
                              });
                            },
                          ),
                          Text("Remember choice",style: TextStyle(color: Colors.white),),
                          SizedBox(
                            width: 70,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext ctx) =>
                                      ForgotPassword(),
                                ),
                              );
                            },
                            child: Text("Forgot Password",style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (username.text.length < 6) {
                            setState(() {
                              msg = "Enter Username";
                            });
                          } else if (password.text.length < 6) {
                            setState(() {
                              msg = "Enter Password";
                            });
                          } else {
                            setState(() {
                              msg = "Welcome ${username.text}";
                            });
                          }
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext ctx) => SignUp(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Text(msg,style: TextStyle(
                  color: Colors.white
                ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  chagecolor() {
    if (username.text.length < 6 && username.text.length < 6) {
      Icon(
        Icons.check,
        color: Colors.green,
      );
    }
  }
}
