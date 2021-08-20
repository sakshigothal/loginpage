import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var msg = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          //  color: Colors.pink[400],
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sign Up ",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                      child: Column(
                        children: [
                          TextField(
                            controller: name,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              // ),
                              hintText: "Userame",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: email,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              // ),
                              hintText: "Email",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            controller: password,
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(100),
                              // ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                if ((name.text.length < 6 ||
                                        name.text.length == 0) &&
                                    (email.text.length < 6 ||
                                        email.text.length == 0) &&
                                    (password.text.length < 6 ||
                                        password.text.length == 0)) {
                                  msg = "Please enter valid details";
                                } else if (name.text.length == 0 ||
                                    email.text.length < 6 ||
                                    password.text.length < 6) {
                                  msg = "Please enter valid details";
                                } else if (name.text.length < 6 ||
                                    email.text.length == 0 ||
                                    password.text.length < 6) {
                                  msg = "Please enter valid details";
                                } else if (name.text.length < 6 ||
                                    email.text.length < 6 ||
                                    password.text.length == 0) {
                                  msg = "Please enter valid details";
                                } else {
                                  msg = "Details save sucessfully!!!!!";
                                }
                              });
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext ctx) => LoginPage(),
                                  ),
                                );
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: Text("Back to Login",style: TextStyle(color: Colors.black),),
                          ),
                          Text(
                            msg,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
