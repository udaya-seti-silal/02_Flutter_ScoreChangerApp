import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'ScoreApp',
    home: App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int number = 0;

  void increasenumber() {
    setState(() {
      number++;
    });
  }

  void decreasenumber() {
    setState(() {
      number--;
    });
  }

  void resetnum() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("ScoreApp"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restart_alt),
        onPressed: resetnum,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "SCORE",
              style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            number.toString(),
            style: TextStyle(
                fontSize: 80, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          SizedBox(
            height: 40,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RaisedButton(
              child: Text("INCREASE",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue)),
              onPressed: increasenumber,
            ),
            SizedBox(
              width: 10,
            ),
            RaisedButton(
              child: Text(
                "DECREASE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              onPressed: decreasenumber,
              color: Colors.red,
            ),
          ]),
        ],
      ),
    );
  }
}
