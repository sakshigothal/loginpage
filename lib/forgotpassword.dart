import 'package:flutter/material.dart';
import 'package:loginpage/main.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  var txt = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        //color: Colors.purple[200],
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
          padding: const EdgeInsets.fromLTRB(16, 40, 16, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Fogot Password",style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),),
              Card(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 30, 16, 10),
                  child: Column(
                    children: [
                      TextField(
                        controller: username,
                       decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.white),
                           // labelText: "USERNAME",
                            // prefixIcon: Icon(Icons.verified_user),
                            // suffixIcon: Icon(Icons.check)
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscuringCharacter: "*",
                        obscureText: true,
                        controller: password,
                       decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white),
                         // labelText: "PASSWORD",
                          // prefixIcon: Icon(Icons.password),
                          // suffixIcon: Icon(
                          //   Icons.check,
                          //   // color: Colors.red,
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        obscuringCharacter: "*",
                        obscureText: true,
                        controller: confirmpassword,
                       decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5),
                              ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.white),
                          //labelText: "CONFORM PASSWORD",
                          // prefixIcon: Icon(Icons.password),
                          // suffixIcon: Icon(
                          //   Icons.check,
                          //   //color: Colors.red,
                          // ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (username.text.length != 0 &&
                                password.text.length != 0 &&
                                confirmpassword.text.length != 0) {
                              txt = "Password set sucessfully!!!";
                            } else {
                              txt = "Please enter valid details";
                            }
                            username.text = "";
                            password.text = "";
                            confirmpassword.text = "";
                          });
                        },
                        style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                        child: Text("Save Password",style: TextStyle(color: Colors.black),),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
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
                      Text(txt,style: TextStyle(
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
}
