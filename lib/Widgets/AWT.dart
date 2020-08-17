import 'package:finalpractice/Pages/AWTquestions/awtQuestions2.dart';
import 'package:finalpractice/Pages/AWTquestions/awtQuestions4.dart';
import 'package:finalpractice/Pages/AWTquestions/awtQuestions3.dart';
import 'package:finalpractice/Pages/AWTquestions/awtQuestions5.dart';
import 'package:flutter/material.dart';
import '../Pages/AWTquestions/awtQuestions.dart';

class AWT extends StatelessWidget {
  @override
  Widget build(BuildContext contextA) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Advance Welding Technology(AWT)'),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(contextA,
                          MaterialPageRoute(builder: (context) => AWTQuiz()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT MCQ questions - set I',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(contextA,
                          MaterialPageRoute(builder: (context) => AWTSet2()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT MCQ questions - set II ',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(contextA,
                          MaterialPageRoute(builder: (context) => AWTSet3()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT MCQ questions - set III',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(contextA,
                          MaterialPageRoute(builder: (context) => AWTSet4()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT MCQ questions - set IV ',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(contextA,
                          MaterialPageRoute(builder: (context) => AWTSet5()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT MCQ questions - set V ',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20.0),
                    child: FlatButton(
                        padding: EdgeInsets.all(10.0),
                        color: Colors.black45,
                        onPressed: () {
                          Navigator.pushNamed(contextA, ('/'));
                        },
                        child: Text(
                          'Back',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        )))
              ]),
        ),
      ),
    );
  }
}
