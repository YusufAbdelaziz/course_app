import 'package:course_app/models/tutor.dart';
import 'package:flutter/material.dart';

class TutorCard extends StatelessWidget {
  final Tutor tutor;

  const TutorCard({@required this.tutor});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
      alignment: Alignment.center,
      child: ListTile(
        leading: Container(
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(tutor.imageUri),
              )),
        ),
        title: Text(
          tutor.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(tutor.role),
      ),
    );
  }
}
