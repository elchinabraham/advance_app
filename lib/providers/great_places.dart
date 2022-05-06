import 'dart:io';

import 'package:flutter/cupertino.dart';
import '../models/place.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String title,
    File pickedImage,
  ) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      image: pickedImage,
      location: PlaceLocation(address: '', latitude: 12, longitude: 12),
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
