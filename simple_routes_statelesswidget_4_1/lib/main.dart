import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), routes: <String, WidgetBuilder>{
      "/SecondPage": (BuildContext context) => SecondPage()
    });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/SecondPage");
                },
                icon: Icon(Icons.favorite, color: Colors.redAccent),
                iconSize: 70.0,
              ),
              Text("Home")
            ],
          )),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second page"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Container(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.home, color: Colors.blue),
                iconSize: 70.0,
              ),
              Text("Second page")
            ],
          ),
        )));
  }
}
