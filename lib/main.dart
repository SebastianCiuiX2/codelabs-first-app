import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
}

class MyAppState extends ChangeNotifier{
  var current = WordPair.random();
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var appState = context.watch();
    return Scaffold(
      body: Column(
        children: [
          Text('A random idea'),
          Text(appState.current.asLowerCase)
        ],
      ),
    )
  }

}