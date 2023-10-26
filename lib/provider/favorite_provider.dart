import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  final List<int> _favoriteList = [];

  List<int> get favoriteList => _favoriteList;

  void addFavorite(int value) {
    _favoriteList.add(value);
    notifyListeners();
  }

  void removeFavorite(int value) {
    _favoriteList.remove(value);
    notifyListeners();
  }

  // bool isFavorite(int value) {
  //   return _favoriteList.contains(value);
  // }
}
