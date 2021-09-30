import 'package:flutter/material.dart';
import 'teacher.dart';
import 'card.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color(0xFF0244d0),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(
                      Icons.menu_rounded,
                      color: Colors.white,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Text(
                      "DASHBOARD ",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    Icon(
                      Icons.add_alert,
                      color: Colors.blue,
                      size: 26.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 130, 20, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Profile");
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3.8,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0XFFf0f0f0),
                          offset: Offset(0.0, 1.0),
                          blurRadius: 6.0,
                        ),
                      ],
                      color: const Color(0XFFffffff),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('images/rash.jpg'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Rashida v",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "UG Third Year",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black54,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: contain(
                        path1: 'images/syllubus.png',
                        path2: 'syllubus',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: contain(
                        path1: 'images/att.png',
                        path2: 'Attandence',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: contain(
                        path1: 'images/hom.png',
                        path2:  'Homework',
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: contain(
                        path1: 'images/result.jpg',
                        path2: 'Result',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Padding(
                padding: const EdgeInsets.only(top: 10, left: 30),
                child: Text(
                  "Teachers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 30.0),
                  height: 50.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SizedBox(width: 30,),
                      teacher(
                        path: 'images/fida.jpeg',
                      ),
                      teacher(
                        path: 'images/ashi.jpeg',
                      ),
                      teacher(
                        path: 'images/maji.jpeg',
                      ),
                      teacher(
                        path: 'images/fida.jpeg',
                      ),
                      teacher(
                        path: 'images/fa.jpg',
                      ),
                      teacher(
                        path: 'images/rash.jpg',
                      ),
                      teacher(
                        path: 'images/rash.jpg',
                      ),
                      teacher(
                        path: 'images/fa.jpg',
                      ),
                      teacher(
                        path: 'images/ashi.jpeg',
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }}