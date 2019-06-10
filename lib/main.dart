import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new FirstScreen()
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    bool checkBoxValue;

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Multi Page Application"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SecondScreen()),
                  );
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 20)
                ),
              ),
            ],
          ),
        )
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Multi Page Application Page-1"),
      ),
      body: new Text("Another Page...!!!!!!"),
    );
  }
}
