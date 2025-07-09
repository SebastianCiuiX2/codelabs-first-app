import 'package:english_words/src/word_pair.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../MyAppState.dart';
import '../widgets/BigCard.dart';

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData icon;
    if (appState.favorites.contains(pair)) {
      icon = Icons.favorite;
    } else {
      icon = Icons.favorite_border;
    }

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BigCard(pair: pair),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,

            children: [
              ElevatedButton.icon(
                onPressed: appState.toggleFavorite,
                icon: Icon(icon),
                label: Text("Like"),
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  appState.getNext();
                },
                child: Text("Next"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
