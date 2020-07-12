import 'package:flutter/foundation.dart';

class CourseDetail {
  final String name;
  final String description;
  bool isSeen;
  CourseDetail(
      {this.isSeen = false,
      @required this.name,
        @required this.description });
}
