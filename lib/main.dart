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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  // manage the sum section
  int sum = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dalisay Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Add Row
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "First Number"),
                      keyboardType: TextInputType.number,
                      controller: add1Controller,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Text(" + ", style: TextStyle(fontSize: 20))
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Second Number"),
                      keyboardType: TextInputType.number,
                      controller: add2Controller,
                    ),
                  ),

                  Container(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Text(' = $sum', style: TextStyle(fontSize: 20))
                  ),
                  // 3.a Add an IconButton here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          sum = int.parse(add1Controller.text) +
                              int.parse(add2Controller.text);
                        });
                      },
                      icon: const Icon(Icons.add), color: Colors.green),
                  // b.b Add an button here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          sum = 0;
                          add1Controller.clear();
                          add2Controller.clear();
                        });
                      },
                      icon: const Icon(Icons.clear), color: Colors.red)
                ],
              )
          ),

          // 3.c - Add the other operations
          // Minus Row

          // Multiplication Row

          // Division Row
        ],
      ),
    );
  }
}
