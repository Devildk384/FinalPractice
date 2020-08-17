import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:finalpractice/Widgets/AWT.dart';
import 'package:finalpractice/Widgets/TQM.dart';
import 'package:flutter/material.dart';
import 'Renewable.dart';

class MyHmePagee extends StatefulWidget {
  @override
  _MyHmePageeState createState() => _MyHmePageeState();
}

class _MyHmePageeState extends State<MyHmePagee> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(content: Text('Double Back to leave')),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
                  child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    hoverColor: Colors.teal,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contextkkk) => Renewable()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'Renewable Energy Resource ',
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
                          MaterialPageRoute(builder: (context) => AWT()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'AWT ',
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
                          MaterialPageRoute(builder: (context) => TQM()));
                    },
                    color: Colors.teal,
                    child: Text(
                      'TQM',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
