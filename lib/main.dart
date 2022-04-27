import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'secondscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Nimra Amjad"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Home Screen",
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                    child: const Text(
                      "First screen",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    child: const Text(
                      "Second screen",
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
