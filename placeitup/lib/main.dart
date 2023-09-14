import 'package:placeitup/Screens/homepage.dart';
import 'package:flutter/material.dart';

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
        "/": (context) => const Home(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
