// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'question_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 15, 197),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 120),
            margin: EdgeInsets.only(left: 30, right: 30),
            child: ListTile(
              title: Image.asset(
                "assets/quizlogo.png",
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50),
            margin: EdgeInsets.only(left: 90, right: 90),
            child: ListTile(
              title: Image.asset(
                "assets/start.png",
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => QuestionPage(),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            margin: EdgeInsets.only(left: 90, right: 90),
            child: ListTile(
              title: Image.asset(
                "assets/exit.png",
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onTap: () {
                exit(0);
              },
            ),
          ),
        ],
      ),

    );
  }
}
