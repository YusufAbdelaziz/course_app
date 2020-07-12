import 'package:course_app/models/subject.dart';
import 'package:course_app/widgets/subject_card.dart';
import 'package:flutter/material.dart';

import 'custom_header.dart';

class SubjectSection extends StatefulWidget {
  final List<Subject> subjectList;

  const SubjectSection({@required this.subjectList});
  @override
  _SubjectSectionState createState() => _SubjectSectionState();
}

class _SubjectSectionState extends State<SubjectSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomHeader(
          headerName: 'Subject',
        ),
        Container(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(vertical: 20),
            itemCount: widget.subjectList.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, i) => GestureDetector(
              onTap: () {
                setState(() {
                  widget.subjectList[i].isClicked = !widget.subjectList[i].isClicked;
                });
              },
              child: SubjectCard(
                  name: widget.subjectList[i].name,
                  imageUri: widget.subjectList[i].imageUri,
                  isClicked: widget.subjectList[i].isClicked),
            ),
          ),
        ),
      ],
    );
  }
}
