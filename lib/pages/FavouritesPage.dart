import 'package:codelabs_first_flutter_app/MyAppState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var words = appState.favorites;

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Favourite words:"),
        ),
        for (var word in words)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(word.asLowerCase),
          ),
      ],
    );
  }
}
