import 'package:finalpractice/Widgets/AWT.dart';
import 'package:finalpractice/Widgets/Renewable.dart';
import 'package:finalpractice/Widgets/TQM.dart';
import 'package:flutter/material.dart';
import 'Widgets/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHmePagee(),
        '/first': (context) => AWT(),
        '/second': (context) => Renewable(),
        '/third': (context) => TQM()
      },
    );
  }
}
