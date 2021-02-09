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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text("Snack Bar!"),
                duration: Duration(seconds: 3),
              ),
            );
          },
          child: Text("Click To show SnackBar"),
        ),
      ),
    );
  }
}
