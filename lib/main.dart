import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(
          builder: (context) {
            return RaisedButton(
              onPressed: () {
                Scaffold.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Snack Bar!"),
                    duration: Duration(seconds: 3),
                  ),
                );
              },
              child: Text("Click To show SnackBar"),
            );
          },
        ),
      ),
    );
  }
}
