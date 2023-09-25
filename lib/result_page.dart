import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final int correctanswer;
  final int wronganswer;
  const ResultPage(
      {super.key, required this.correctanswer, required this.wronganswer});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 15, 197),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
                left: 60, right: 60, top: 140, bottom: 90),
            child: Image.asset("assets/result.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: ListTile(
              title: Text("${widget.correctanswer} Doğru",style: const TextStyle(fontSize: 27,fontWeight: FontWeight.w600),),
              contentPadding:
                  const EdgeInsets.only(top: 12, bottom: 12, right: 7, left: 7),
              tileColor: Colors.white,
              leading: const Icon(
                Icons.check_circle,
                size: 50,
                color: Colors.green,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 3),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(left: 100, right: 100, top: 15),
            child: ListTile(
              title: Text("${widget.wronganswer} Yanlış",style: const TextStyle(fontSize: 27,fontWeight: FontWeight.w600),),
              contentPadding:
                  const EdgeInsets.only(top: 12, bottom: 12, right: 7, left: 7),
              tileColor: Colors.white,
              leading: const Icon(
                Icons.dangerous,
                size: 50,
                color: Colors.red,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                side: BorderSide(width: 3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
