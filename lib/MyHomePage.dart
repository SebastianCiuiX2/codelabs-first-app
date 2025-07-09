import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyAppState.dart' show MyAppState;

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('A random idea'),
            Text(appState.current.asLowerCase),

            ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text("Click me"),
            ),
          ],
        ),
      ),
    );
  }
}