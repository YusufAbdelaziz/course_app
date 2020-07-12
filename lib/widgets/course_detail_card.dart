import 'package:course_app/models/course_detail.dart';
import 'package:flutter/material.dart';

class CourseDetailCard extends StatefulWidget {
  final CourseDetail detail;

  const CourseDetailCard({@required this.detail});

  @override
  _CourseDetailCardState createState() => _CourseDetailCardState();
}

class _CourseDetailCardState extends State<CourseDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          height: 45,
          width: 45,
          duration: Duration(milliseconds: 300),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:
                  widget.detail.isSeen ? Color(0xFF0B155A) : Color(0xFF0B155A).withOpacity(0.45)),
          child: Icon(
            Icons.play_arrow,
            color: widget.detail.isSeen ? Colors.white : Color(0xFF0B155A).withOpacity(0.45),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height : 15),
            Text(
              widget.detail.name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 5),
            Text(
              widget.detail.description,
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 15),
            Container(
                width: MediaQuery.of(context).size.width - 100,
                child: Divider(
                  height: 2,
                ))
          ],
        )
      ],
    );
  }
}
