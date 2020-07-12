import 'package:course_app/models/course.dart';
import 'package:course_app/widgets/course_detail_card.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  final Course course;
  final int index;
  const CoursePage({@required this.course, @required this.index});

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F6),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xFF0B155A),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: <Widget>[
            Text(
              widget.course.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              widget.course.tutor.name,
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 190,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: () {
                    if (widget.index % 3 == 0) {
                      return Color(0xFF6B53FF);
                    } else if (widget.index % 3 == 1) {
                      return Color(0xFFFFCACA);
                    } else {
                      return Color(0xFFFF5954);
                    }
                  }()),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Image.asset('assets/images/Group13.png'),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(bottom: 20, left: 15),
                      child: Image.asset(
                        'assets/images/Group6.png',
                        height: 40,
                      )),
                  if (widget.index % 3 != 1)
                    Hero(
                      tag: 'hero-${widget.index}',
                      child: Image.asset(
                        'assets/images/Group3.png',
                        height: 140,
                      ),
                    )
                  else
                    Hero(
                      tag: 'hero-${widget.index}',
                      child: Image.asset(
                        'assets/images/Group1.png',
                        height: 140,
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Course Details',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  width: 160,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xFF0B155A).withOpacity(0.45),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.access_time,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(widget.course.duration, style: TextStyle(color: Color(0xFF0B155A)))
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            ListView.separated(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemBuilder: (_, i) => InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      setState(() {
                        widget.course.details[i].isSeen = !widget.course.details[i].isSeen;
                      });
                    },
                    child: CourseDetailCard(detail: widget.course.details[i])),
                separatorBuilder: (_, __) => SizedBox(height: 10),
                itemCount: widget.course.details.length)
          ],
        ),
      ),
    );
  }
}
