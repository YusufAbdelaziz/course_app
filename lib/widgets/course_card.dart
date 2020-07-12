import 'package:course_app/models/course.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  final int index;
  const CourseCard({@required this.course, @required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: () {
            if (index % 3 == 0) {
              return Color(0xFF6B53FF);
            } else if (index % 3 == 1) {
              return Color(0xFFFFCACA);
            } else {
              return Color(0xFFFF5954);
            }
          }(),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            course.category,
            style: TextStyle(
              color: index % 2 == 1 ? Colors.black : Colors.white,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 10),
          Text(
            course.name,
            style: TextStyle(
                color: index % 2 == 1 ? Colors.black : Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          if (index % 3 == 1)
            Center(
              child: Hero(
                tag: 'hero-$index',
                child: Image.asset(
                  'assets/images/Group1.png',
                ),
              ),
            )
          else
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Image.asset(
                    'assets/images/Group6.png',
                    height: 40,
                  ),
                ),
                Hero(
                  tag: 'hero-$index',
                  child: Image.asset(
                    'assets/images/Group3.png',
                    height: 90,
                    width: 80,
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
