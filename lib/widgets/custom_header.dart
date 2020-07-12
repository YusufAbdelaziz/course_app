import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String headerName;

  const CustomHeader({@required this.headerName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: <Widget>[
          Text(
            headerName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Spacer(),
          Text('View all',
              style: TextStyle(color: Color(0xFF0B165F), fontSize: 14, fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
