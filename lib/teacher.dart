import 'package:flutter/material.dart';
class teacher extends StatelessWidget {
  final String path;
  teacher({this.path='images/rash.jpg'});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 3),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            // color: Colors.deepPurple,
            image: DecorationImage(
                image: AssetImage(path),
                fit: BoxFit.cover
            )
        ),
        width: 50,
      ),
    );
  }
}