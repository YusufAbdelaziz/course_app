import 'package:flutter/material.dart';

import 'package:course_app/data/dummy_courses.dart';
import 'package:course_app/data/dummy_subjects.dart';
import 'package:course_app/widgets/courses_section.dart';
import 'package:course_app/widgets/subject_section.dart';
import 'package:course_app/widgets/tutor_section.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _textEditingController;
  final subjectList = DummySubjects.subjectsList;
  final dummyCourses = DummyCourses.courses;
  final dummyTutors = DummyCourses.tutors;
  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F6),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 120),
        child: Column(
          children: <Widget>[
            AppBar(
              leading: Image.asset('assets/images/Group7.png'),
              backgroundColor: Colors.transparent,
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 2),
                        image: DecorationImage(
                            image: AssetImage('assets/images/user_placeholder.png'))),
                  ),
                ),
              ],
              elevation: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(5, 5),
                            color: Colors.grey.withOpacity(0.25),
                            blurRadius: 10,
                            spreadRadius: 3)
                      ]),
                  margin: EdgeInsets.only(top: 10),
                  child: TextField(
                    cursorColor: Color(0xFF2B31BA),
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.only(top: 15),
                        hoverColor: Color(0xFF2B31BA),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFF2B31BA),
                        ),
                        border: InputBorder.none),
                    controller: _textEditingController,
                  )),
            ),
          ],
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          SubjectSection(
            subjectList: subjectList,
          ),
          CoursesSection(
            dummyCourses: dummyCourses,
          ),
          SizedBox(
            height: 10,
          ),
          TutorSection(dummyTutors: dummyTutors)
        ],
      ),
    );
  }
}
