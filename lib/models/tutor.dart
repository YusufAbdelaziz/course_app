import 'package:flutter/foundation.dart';

class Tutor {
  final String name;
  final String role;
  final String imageUri;

  Tutor({@required this.name, @required this.role, this.imageUri = 'assets/images/user_placeholder.png'});
}
