import 'package:flutter/material.dart';

class SubjectCard extends StatelessWidget {
  final String name;
  final String imageUri;
  final bool isClicked;

  SubjectCard({@required this.name, @required this.imageUri, @required this.isClicked});
  final linearGradient = LinearGradient(
      colors: [Color(0xFF0B155C), Color(0xFF061A9D)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.decelerate,
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      width: 85,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(10, 10),
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 10,
            ),
          ],
          gradient: isClicked ? linearGradient : null),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imageUri,
            height: 50,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
                color: isClicked ? Colors.white : Colors.black,fontSize: 13,
                fontWeight: isClicked ? FontWeight.bold : FontWeight.w500),
          )
        ],
      ),
    );
  }
}
