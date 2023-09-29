// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:google_fonts/google_fonts.dart';
import '../utils/routes.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Container(),
          Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.only(left: 0, top: 50),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                  color: Colors.purple,
                  fontSize: 15,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 250.0,
                    width: 300.0,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: Center(
                      child: Image.asset('assets/images/logginn.png'),
                    ),
                  ),
                  Form(
                    child: Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Column(children: [
                        TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                prefixIcon: const Icon(Icons.email),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Email";
                              }
                              return null;
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                            keyboardType: TextInputType.text,
                            style: const TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Enter Password";
                              }
                              return null;
                            }),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.homeRoute);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.purple, // Background color
                                foregroundColor: Colors.white, // Text color
                              ),
                              child: const Text('Login'),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                            height: 50,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, MyRoutes.signupRoute);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.purple, // Background color
                                foregroundColor: Colors.white, // Text color
                              ),
                              child: const Text('Register'),
                            ))
                      ]),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
