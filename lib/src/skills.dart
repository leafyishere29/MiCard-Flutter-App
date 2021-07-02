//import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'home.dart';

void main() => runApp(SkillPage());

class SkillPage extends StatelessWidget {
  Widget rating(int ts, bool nhalf) {
    //ts is the total number of stars for the skill, with nhalf for extra
    //half star
    List<Widget> stars = [];
    for (int i = 0; i < ts; i++) {
      stars.add(Icon(
        Icons.star_rate_rounded,
        color: Colors.teal[900],
      ));
    }
    if (nhalf) {
      stars.add(Icon(
        Icons.star_half_rounded,
        color: Colors.teal[900],
      ));
    }
    return Row(children: stars);
  }

  Widget skillCard(String skillName, Color cardColor, int ts, bool nhalf) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      //padding: EdgeInsets.all(10),
      color: cardColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Center(
          child: Row(
            children: [
              Expanded(child: rating(ts, nhalf)),
              Expanded(
                child: Text('$skillName',
                    style: TextStyle(
                        color: Colors.teal[800],
                        fontFamily: 'SourceSansPro',
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        title: Text(
          'My Skills',
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
                      type: PageTransitionType.leftToRightJoined,
                      childCurrent: SkillPage(),
                      duration: Duration(milliseconds: 600),
                      child: HomePage()));
            },
            icon: Icon(Icons.home),
            tooltip: 'Click to go back',
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[800],
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey[800],
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
            color: Colors.teal[900],
            child: ListView(
              children: [
                skillCard('C/C++', Colors.amber[100], 5, false),
                skillCard('Python', Colors.amber, 3, true),
                skillCard('Flutter', Colors.amber[100], 3, false),
                skillCard('Google Cloud Platform', Colors.amber, 3, false),
                skillCard('SQL', Colors.amber[100], 4, false),
                skillCard('HTML/CSS', Colors.amber, 3, true),
                skillCard('Data Structures', Colors.amber[100], 5, false),
                skillCard('Algorithms', Colors.amber, 4, true),
                skillCard('Operating Systems', Colors.amber[100], 4, false),
                skillCard('Machine Learning', Colors.amber, 3, true),
                skillCard(
                    'Object Oriented Programming', Colors.amber[100], 4, false),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
