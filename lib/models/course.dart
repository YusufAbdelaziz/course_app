import 'package:course_app/models/tutor.dart';
import 'package:flutter/foundation.dart';

import 'course_detail.dart';

class Course {
  final String name;
  final String category;
  final String duration;
  final List<CourseDetail> details;
  final Tutor tutor;
  Course(
      {@required this.name,
      @required this.tutor,
      @required this.category,
      @required this.duration,
      @required this.details});
}
