import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24.0,
                        semanticLabel:
                        'Text to announce in accessibility modes',
                      ),
                    ),
                    const Text(
                      "PROFILE ",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 24),
                    ),
                    Icon(
                      Icons.edit_rounded,
                      color: Colors.white,
                      size: 26.0,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 130, 20, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: const Color(0XFFffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
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
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "UG Third Year",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      Divider(
                        height: 40,
                        thickness: 1,
                        indent: 30,
                        endIndent: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed et dolore magna aliqua.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 420, 20, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 6.5,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 10.0,
                      ),
                    ],
                    color: const Color(0XFFffffff),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 35.0, top: 35.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.edit_rounded),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "+91 99999 00000",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.email_rounded),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Rashidav27@gmail.com",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 600, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffDAE1E7),
                        // margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: const ListTile(
                          leading: Text(
                            'Personal details',
                            style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4F95)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff2B4F95),
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        color: Color(0xffDAE1E7),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: const ListTile(
                          leading: Text(
                            'Friend List',
                            style: TextStyle(
                                fontFamily: 'Source Sans Pro',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff2B4F95)),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward,
                            color: Color(0xff2B4F95),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}