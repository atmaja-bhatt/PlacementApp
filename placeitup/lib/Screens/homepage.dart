import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  PlacementHomePageState createState() => PlacementHomePageState();
}

class PlacementHomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text(
          'PlaceItUp',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: const SingleChildScrollView(
          child: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Hello World",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black87,
                      ))
                ])),
      )),
    );
  }
}
