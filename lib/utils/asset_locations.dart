import 'package:flutter/cupertino.dart';

class AssetLocations {
  static ImageProvider iconLocation(String iconName) {
    final location = AssetImage('assets/icons/$iconName.png');
    return location;
  }
}