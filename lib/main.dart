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
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
          onPressed: () {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text("Snack Bar!"),
                duration: Duration(seconds: 3),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: (){
                    print("Press Button");
                  },
                ),
              ),
            );
          },
          child: Text("Click To show SnackBar"),
        )
    );
  }
}
