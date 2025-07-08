import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
}

class MyAppState extends ChangeNotifier{
  var current = WordPair.random();
}