import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar Demo'),
        ),
        body: SnackBarPage(),
      )
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("Show Snackbar"),
        onPressed: () {
          final snackBar = SnackBar(
              content: Text("Yay! A Snackbar!"),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  //
                })
          );
          Scaffold.of(context).showSnackBar(snackBar);

        },
      )
    );
  }
}
