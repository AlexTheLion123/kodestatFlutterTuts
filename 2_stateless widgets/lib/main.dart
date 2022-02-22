import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Stateless widget')),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  MyCard(
                    title: Text("I love flutter"),
                    icon: Icon(Icons.favorite, size: 40.0, color: Colors.redAccent)
                  ),
                  MyCard(
                    title: Text("I love donuts"),
                    icon: Icon(Icons.donut_large, size: 40.0, color: Colors.brown)
                  ),
                  MyCard(
                    title: Text("I see you"),
                    icon: Icon(Icons.visibility, size: 40.0, color: Colors.blue)
                  )
                ]),
          )),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({required this.title, required this.icon});

  final Widget title;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Card(
          child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[this.title, this.icon],
              )),
        ));
  }
}
