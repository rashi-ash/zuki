import 'package:flutter/material.dart';
class contain extends StatelessWidget {
  final String path1;
  final String path2;
  contain({this.path1 = 'images/syllubus.png', this.path2 = 'syllubus'});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5.5,
      width: MediaQuery.of(context).size.width / 2.4,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color(0XFFf0f0f0),
            offset: Offset(0.0, 1.0),
            blurRadius: 6.0,
          ),
        ],
        color:const Color(0XFFffffff),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color(0XFFd7dee9),
            child: CircleAvatar(
              backgroundImage: AssetImage(path1),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            path2,
            style:const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black54,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}