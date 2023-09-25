// ignore_for_file: use_key_in_widget_constructors

import 'result_page.dart';
import 'package:flutter/material.dart';
import 'question.dart';

class QuestionPage extends StatefulWidget {
  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int currentIndex = 0;
  int correctanswer = 0;
  int wronganswer = 0;
  Color color = Colors.white;
  final List<Question> _questions = [
    Question(
      id: '10',
      image: 'assets/samlake.jpg',
      options: {
        'Brad Pitt': false,
        'Justin Bieber': false,
        'Sam Lake': true,
        'Dwayne Johnson': false
      },
    ),
    Question(
      id: '11',
      image: 'assets/benedict.jpg',
      options: {
        'Mark Ruffalo': false,
        'Benedict Cumberbatch': true,
        'Edward Norton': false,
        'Ryan Reynolds': false
      },
    ),
    Question(
      id: '12',
      image: 'assets/ryan.jpeg',
      options: {
        'Ryan Reynolds': true,
        'Wentworth  Miller': false,
        'Will Smith': false,
        'Tom Cruise': false
      },
    ),
    Question(
      id: '13',
      image: 'assets/scarlett.png',
      options: {
        'Kate Winslet': false,
        'Scarlett Johnson': true,
        'Lena Headey': false,
        'Natalie Portman': false
      },
    ),
      Question(
    id: '14',
    image: 'assets/leonardo.jpg', 
    options: {
      'Tom Hanks': false,
      'Leonardo DiCaprio': true,
      'Johnny Depp': false,
      'Brad Pitt': false
    },
  ),
  Question(
    id: '15',
    image: 'assets/nicole.jpg', 
    options: {
      'Meryl Streep': false,
      'Julia Roberts': false,
      'Cate Blanchett': false,
      'Nicole Kidman': true
    },
  ),
  Question(
    id: '16',
    image: 'assets/robert.jpg', 
    options: {
      'Robert Downey Jr.': true,
      'Chris Evans': false,
      'Chris Hemsworth': false,
      'Mark Ruffalo': false
    },
  ),

  ];
  void _nextQuestion() {
    setState(() {
      if (currentIndex < _questions.length - 1) {
        currentIndex++;
      } else {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ResultPage(
            correctanswer: correctanswer,
            wronganswer: wronganswer,
          ),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 100, 15, 197),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 64, 4, 133),
        title: const Text('Bu Ünlü Kim ?'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 250,
            child: Image.asset(_questions[currentIndex].image),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(30),
              itemCount: _questions[currentIndex].options.length,
              separatorBuilder: (context, index) => const SizedBox(
                height: 7,
              ),
              itemBuilder: (context, index) {
                String optionText =
                    _questions[currentIndex].options.keys.elementAt(index);
                bool isCorrect = _questions[currentIndex].options[optionText]!;
                return ListTile(
                  tileColor: color,
                  onTap: () {
                    if (isCorrect) {
                      correctanswer++;
                      setState(() {
                        color = Colors.green;
                        const Duration(seconds: 2);
                        color = Colors.white;
                      });
                    } else {
                      wronganswer++;
                    }
                    _nextQuestion();
                  },
                  
                  title: Text(optionText),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(width: 3),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
