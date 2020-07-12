import 'package:flutter/foundation.dart';

class Subject {
  final String name;
  final String imageUri;
   bool isClicked;
  Subject({@required this.name, @required this.imageUri, this.isClicked = false});
}
