import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petshop/menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // // Check for errors
        if (snapshot.hasError) {
          return MaterialApp(
            home: Center(
              child: Text(snapshot.error),
            ),
          );
        }

        // // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
            home: ScrollConfiguration(
              // behavior: MyBehavior(),
              child: MenuScreen(),
            ),
          );
        }
        return MaterialApp(
          home: Center(
            child: Text("Loading"),
          ),
        );
      },
    );
  }
  // )
  // return MaterialApp(
  //   title: 'Flutter Demo',
  //   theme: ThemeData(
  //     primarySwatch: Colors.blue,
  //     visualDensity: VisualDensity.adaptivePlatformDensity,
  //   ),
  //   home: MenuScreen(),
  // );
  // }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
