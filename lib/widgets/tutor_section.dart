import 'package:flutter/material.dart';

import 'custom_header.dart';
import 'package:course_app/models/tutor.dart';
import 'package:course_app/widgets/tutor_card.dart';

class TutorSection extends StatelessWidget {
  final List<Tutor> dummyTutors;

  const TutorSection({@required this.dummyTutors});
  @override
  Widget build(BuildContext context) {
    return Column(

      children: <Widget>[
        CustomHeader(
          headerName: 'Tutors',
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            reverse: true,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            itemBuilder: (_, i) => TutorCard(tutor: dummyTutors[i]),
            separatorBuilder: (_, __) => SizedBox(height: 10),
            itemCount: dummyTutors.length)
      ],
    );
  }
}
