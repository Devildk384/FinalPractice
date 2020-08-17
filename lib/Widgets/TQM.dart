import 'package:finalpractice/Pages/TQMquestions/TqmQuestion2.dart';
import 'package:finalpractice/Pages/TQMquestions/tqmQuestion3.dart';
import 'package:flutter/material.dart';

class TQM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Total Quality Management(TQM)'),
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Set2()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'TQM MCQ questions - set I',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Set2()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'TQM MCQ questions - set II ',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Set3()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'TQM MCQ questions - set III',
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
                          Navigator.pushNamed(context, ('/'));
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
