// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<String> questions = [
    "What is your favorite GDSC ?",
    "What is your favorite Fruit ?",
  ];

  List<Map<String, dynamic>> answers = [
    {
      "question": 0,
      "answers": [
        "GDSC ISI KEF",
        "GDSC ISI Ariana",
        "GDSC ISI Mahdia",
        "GDSC ISET Nabeul",
      ],
    },
    {
      "question": 1,
      "answers": [
        "Banana",
        "Organe",
        "Apple",
        "Starwberry",
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz game"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              questions[index],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 200,
              width: 200,
              child: ListView.builder(
                itemCount: (answers[index]["answers"] as List).length,
                itemBuilder: (context, i) {
                  return ElevatedButton(
                    onPressed: () {
                      setState(() {
                        index++;
                      });
                    },
                    child: Text(
                      answers[index]["answers"][i],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
