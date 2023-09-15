import 'package:flutter/material.dart';
import 'package:placeitup/Screens/homepage.dart';
import 'package:placeitup/Screens/login.dart';
import 'package:placeitup/Screens/signup.dart';
import '../utils/routes.dart';

//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Placeitup());
}

class Placeitup extends StatelessWidget {
  const Placeitup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlaceItUp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const MyLogin(),
        MyRoutes.homeRoute: (context) => const Home(),
        MyRoutes.signupRoute: (context) => const Signup(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
