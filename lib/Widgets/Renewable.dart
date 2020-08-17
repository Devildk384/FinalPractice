import 'package:flutter/material.dart';
import '../Pages/RERquestions/rerUnit1.dart';
import '../Pages/RERquestions/rerUnit2.dart';
import '../Pages/RERquestions/rerUnit3.dart';
import '../Pages/RERquestions/rerUnit4.dart';
import '../Pages/RERquestions/rerUnit5.dart';

class Renewable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Renewable Energy Resources'),
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
                          MaterialPageRoute(builder: (context) => Quiz1()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Unit-I',
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
                          MaterialPageRoute(builder: (context) => Quiz2()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Unit-II ',
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
                          MaterialPageRoute(builder: (context) => Quiz3()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Unit-III',
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
                          MaterialPageRoute(builder: (context) => Quiz4()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Unit-IV',
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
                          MaterialPageRoute(builder: (context) => Quiz5()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Unit-V',
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
