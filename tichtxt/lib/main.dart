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
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myApp"),
      ),
      //body:Text("Hello World"),
      body: Row(
        children: [
          Text(
            "Hello",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
          Text("World!",
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.bold)),
          RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                  children: <TextSpan>[
                TextSpan(
                  text: 'Murari',
                ),
                TextSpan(
                  text: 'Jha',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "Welcome to"),
                TextSpan(
                    text: "Flutter",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 45,
                        color: Colors.orange,
                        fontStyle: FontStyle.italic))
              ]))
        ],
      ),
    );
  }
}
