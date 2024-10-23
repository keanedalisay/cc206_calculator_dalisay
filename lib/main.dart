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
  double sum = 0;
  double diff = 0;
  double prod = 0;
  double quot = 0;

  // either use a TextEditingController for each input field to get the value
  TextEditingController add1Controller = TextEditingController();
  TextEditingController add2Controller = TextEditingController();

  TextEditingController minus1Controller = TextEditingController();
  TextEditingController minus2Controller = TextEditingController();

  TextEditingController multi1Controller = TextEditingController();
  TextEditingController multi2Controller = TextEditingController();

  TextEditingController divide1Controller = TextEditingController();
  TextEditingController divide2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dalisay Unit 5 Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                          sum = double.parse(add1Controller.text) +
                              double.parse(add2Controller.text);
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
          // Minus row
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "First Number"),
                      keyboardType: TextInputType.number,
                      controller: minus1Controller,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Text(" - ", style: TextStyle(fontSize: 20))
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Second Number"),
                      keyboardType: TextInputType.number,
                      controller: minus2Controller,
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: Text(' = $diff', style: TextStyle(fontSize: 20))
                  ),
                  // 3.a Add an IconButton here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          diff = double.parse(minus1Controller.text) -
                              double.parse(minus2Controller.text);
                        });
                      },
                      icon: const Icon(Icons.remove), color: Colors.green),
                  // b.b Add an button here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          diff = 0;
                          minus1Controller.clear();
                          minus2Controller.clear();
                        });
                      },
                      icon: const Icon(Icons.clear), color: Colors.red)
                ],
              )
          ),

          // Multiplication Row
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "First Number"),
                      keyboardType: TextInputType.number,
                      controller: multi1Controller,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Text(" x ", style: TextStyle(fontSize: 20))
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Second Number"),
                      keyboardType: TextInputType.number,
                      controller: multi2Controller,
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: Text(' = $prod', style: TextStyle(fontSize: 20))
                  ),
                  // 3.a Add an IconButton here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          prod = double.parse(multi1Controller.text) * double.parse(multi2Controller.text);
                        });
                      },
                      icon: const Icon(Icons.clear), color: Colors.green),
                  // b.b Add an button here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          prod = 0;
                          multi1Controller.clear();
                          multi2Controller.clear();
                        });
                      },
                      icon: const Icon(Icons.clear), color: Colors.red)
                ],
              )
          ),


          // Division Row
          Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "First Number"),
                      keyboardType: TextInputType.number,
                      controller: divide1Controller,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: const Text(" / ", style: TextStyle(fontSize: 20))
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(labelText: "Second Number"),
                      keyboardType: TextInputType.number,
                      controller: divide2Controller,
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                      child: Text(' = $quot', style: TextStyle(fontSize: 20))
                  ),
                  // 3.a Add an IconButton here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quot = double.parse(divide1Controller.text) /
                              double.parse(divide2Controller.text);
                        });
                      },
                      icon: const Icon(Icons.quora), color: Colors.green),
                  // b.b Add an button here
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quot = 0;
                          divide1Controller.clear();
                          divide2Controller.clear();
                        });
                      },
                      icon: const Icon(Icons.clear), color: Colors.red)
                ],
              )
          ),
        ],
      ),
    );
  }
}
