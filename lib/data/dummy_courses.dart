import 'package:course_app/models/course.dart';
import 'package:course_app/models/course_detail.dart';
import 'package:course_app/models/tutor.dart';

class DummyCourses {
  static List<Course> courses = [
    Course(
        duration: '5 Hours, 20 min',
        name: 'Programming in C',
        category: 'Programming',
        tutor: Tutor(
          role: 'Software Engineer',
          name: 'Lorem',
        ),
        details: [
          CourseDetail(name: 'Introduction', description: 'intro'),
          CourseDetail(name: 'Variables', description: 'Discussing different variables'),
          CourseDetail(name: 'Arrays', description: 'Discussing arrays'),
          CourseDetail(name: 'Loops', description: 'discussing loops'),
          CourseDetail(name: 'Conditional Statements', description: 'discussing statements')
        ]),
    Course(
        duration: '3 Hours, 20 min',
        tutor: Tutor(name: 'Ipsum', role: 'UI/UX Designer'),
        name: 'Fundamentals of UI/UX Design',
        details: [
          CourseDetail(name: 'Introduction', description: 'Intro to the course'),
          CourseDetail(name: 'Color Graphic', description: 'Intro to the color graphic'),
          CourseDetail(name: 'Typography', description: 'Intro to the typography'),
          CourseDetail(name: 'Color Models', description: 'Intro to color models'),
        ],
        category: 'Graphic Design'),
    Course(
        category: 'Physics',
        tutor: Tutor(name: 'Dolor', role: 'Physics Teacher'),
        name: 'Fundamentals of Physics',
        duration: '21 Hours, 50 min',
        details: [
          CourseDetail(name: 'Introduction', description: 'Intro to Physics'),
          CourseDetail(name: 'Motion', description: 'Intro to Motion'),
          CourseDetail(name: 'Velocity', description: 'Intro to the color velocity'),
          CourseDetail(name: 'Acceleration', description: 'Intro to the color acceleration'),
        ])
  ];

  static List<Tutor> tutors = [
    Tutor(name: 'Dolor', role: 'Physics Teacher', imageUri: 'assets/images/tutor2.png'),
    Tutor(name: 'Ipsum', role: 'UI/UX Designer', imageUri: 'assets/images/tutor1.png'),
    Tutor(
      role: 'Software Engineer',
      imageUri: 'assets/images/tutor3.png',
      name: 'Lorem',
    ),
  ];
}
