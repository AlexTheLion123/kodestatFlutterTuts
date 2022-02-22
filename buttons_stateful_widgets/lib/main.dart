import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AwesomeButton());
  }
}

class AwesomeButton extends StatefulWidget {
  const AwesomeButton({Key? key}) : super(key: key);

  @override
  _AwesomeButtonState createState() => _AwesomeButtonState();
}

class _AwesomeButtonState extends State<AwesomeButton> {
  int counter = 0;
  List<String> strings = ["Flutter", "Is", "Awesome"];
  String displayedString = "";

  void onPressed() {
    setState(() {
      displayedString = strings[counter];
      counter = counter < 2 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget!"),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                displayedString,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(15.0),),
              ElevatedButton(
                onPressed: onPressed,
                child: const Text(
                  "Press me",
                  style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 20.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
