import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Color.fromARGB(255, 103, 54, 186)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final textcntroller = TextEditingController();
  String displaytext = "The text will be displayed here ";
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 0, 183),
          title: const Text("Tally counter"),
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 105),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // TextField(
                  //   controller: textcntroller,
                  //   decoration: InputDecoration(
                  //     border: OutlineInputBorder(),
                  //     hintText: "Enter any string",
                  //   ),
                  // ),
                  Text(
                    num.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num += 1;
                          displaytext = textcntroller.text;
                          // displaytext = "ok beii";
                        });
                      },
                      child: Text("Count")),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          num = 0;
                          // displaytext = "Reseted";
                        });
                      },
                      child: Text("Reset")),
                ],
              ),
            ),
          ),
        ));
  }
}
