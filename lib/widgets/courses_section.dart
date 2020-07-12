
import 'package:flutter/material.dart';

import 'course_card.dart';
import 'package:course_app/models/course.dart';
import 'package:course_app/pages/course_page.dart';
class CoursesSection extends StatelessWidget {
  final List<Course> dummyCourses;

  const CoursesSection({@required this.dummyCourses});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: <Widget>[
        Container(
          height: 30,
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              children: <Widget>[
                Text(
                  'New',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(width: 30),
                Text(
                  'Top Rated',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  'Trending',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  'Recording',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 30),
                Text(
                  'Just added',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
            height: 220,
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                itemBuilder: (_, i) => InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          CoursePage(course: dummyCourses[i], index: i))),
                  child: CourseCard(
                    course: dummyCourses[i],
                    index: i,
                  ),
                ),
                separatorBuilder: (_, __) => SizedBox(width: 10),
                itemCount: dummyCourses.length))
      ],
    );
  }
}
