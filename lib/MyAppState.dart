import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
      print("Unliked $current");
    } else {
      favorites.add(current);
      print("Liked $current");
    }
    notifyListeners();
  }

  void clearFavorites(){
    favorites.clear();
    notifyListeners();
    print("Emptied the favorites list ");
  }
  void removeFavorite(WordPair pair){
    if(favorites.contains(pair)) {
      favorites.remove(pair);
      notifyListeners();
    }
  }
}
