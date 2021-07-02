//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'skills.dart';

class HomePage extends StatelessWidget {
  Card contactCard(IconData logo, String info) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        //padding: EdgeInsets.all(10),
        color: Colors.white,
        child: ListTile(
          leading: Icon(
            logo,
            color: Colors.teal[800],
          ),
          title: Text(info,
              style: TextStyle(
                  color: Colors.teal[800],
                  fontFamily: 'SourceSansPro',
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600)),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontFamily: 'SourceSansPro',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftJoined,
                      childCurrent: HomePage(),
                      duration: Duration(milliseconds: 600),
                      child: SkillPage()));
            },
            icon: Icon(Icons.computer_rounded),
            tooltip: 'Click to see my skills',
          )
        ],
      ),
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey[800],
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            color: Colors.teal[900],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: AssetImage('images/photo_red.jpg'),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Saarthak Jain",
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Pacifico',
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                Text('SOFTWARE DEVELOPER',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                        color: Colors.teal[100])),
                SizedBox(
                  height: 25,
                  width: 150,
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                  ),
                ),
                contactCard(Icons.phone, '+91 8800798850'),
                contactCard(Icons.email, 'saarthak0900@gmail.com'),
                SizedBox(
                  height: 20,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  //padding: EdgeInsets.all(10),
                  color: Colors.blueGrey[800],
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeftJoined,
                              duration: Duration(milliseconds: 600),
                              childCurrent: HomePage(),
                              child: SkillPage()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text('Technical Skills',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SourceSansPro',
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
