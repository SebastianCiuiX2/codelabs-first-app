import 'package:codelabs_first_flutter_app/MyAppState.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var words = appState.favorites;
    var theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text("You have ${words.length} favourite words:"),
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 400,
                    childAspectRatio: 400 / 80,
                  ),
                  children: [
                    for (var word in words)
                      ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.delete),
                          color: theme.colorScheme.primary,
                          onPressed: () {
                            appState.removeFavorite(word);
                          },


                        ),
                        title: Text(
                            word.asLowerCase,
                          semanticsLabel: word.asPascalCase,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: ElevatedButton(
            onPressed: appState.clearFavorites,
            child: Text('Clear favorites'),
          ),
        ),
      ],
    );
  }
}
