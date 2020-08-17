import 'package:flutter/material.dart';
import '../../Widgets/Renewable.dart';

var finalScore = 0;
var questionNumber = 0;
var unit2 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1-Maximum efficiency is obtained in",
    "2-The following type of energy is stored as latent heat",
    "3-Which of the following type of collector is used for low temperature systems?",
    "4-In the paraboloid dish concept, the concentrator tracks the sun by rotating about",
    "5-The sun subtends an angle of _____ minutes at the earth’s surface.",
    "6-The value of Solar Constant is",
    "7-The extraterrestrial radiation flux varies by ____ % over a year.",
    "8-The following is (are) laws of black body radiation.",
    "9-Absorption of Solar radiations at earth’s surface occur due to presence of",
    "10-Global radiation =",
    "11-The zenith angle is the angle made by the sun’s rays with the ____ to a ______ surface.",
    "12-Solar radiation flux is usually measured with the help of a",
    "13-Beam radiations are measured with",
    "14-The angle made by the plane surface with the horizontal is known as",
    "15-The angle made in the horizontal plane between the horizontal line due south and the projection of thenormal to the surface on the horizontal plane is",
    "16-Direct Solar energy is used for",
    "17-The power from the sun intercepted by the earth is approximately",
    "18-The following is indirect method of Solar energy utilization",
    "19-A liquid flat plate collector is usually held tilted in a fixed position, facing _____ if located in the northern hemisphere.",
    "20-The collection efficiency of Flat plate collector can be improved by"
  ];

  var choices = [
    [
      "Flat plate collector",
      "Evacuated tube collector",
      "Line focussing collector",
      "Paraboloid dish collector"
    ],
    [
      "Thermal energy",
      "Chemical energy",
      "Electrical energy",
      "Mechanical energy"
    ],
    [
      "Flat plate collector",
      "Line focussing parabolic collector",
      "Paraboloid dish collector",
      "all of the above"
    ],
    ["One axes", "Two axes", "Three axes", "None of the above"],
    ["22", "32", "42", "52"],
    ["1347 W/m2", "1357 W/m2", "1367 W/m2", "1377 W/m2"],
    ["± 1.1", "± 2.2", "± 3.3", "± 4.4"],
    [
      "Plank’s law",
      " Stefan-Boltzmann law",
      "both (A) and (B)",
      "None of the above"
    ],
    ["Ozone", "Water vapours", "Carbon di-oxide", "all of the above"],
    [
      "Direct radiation – Diffuse Radiation",
      "Direct radiation + Diffuse Radiation",
      "Direct radiation / Diffuse Radiation",
      "Diffuse Radiation / Direct radiation"
    ],
    [
      "normal, horizontal",
      "tangent, horizontal",
      "normal, vertical",
      "tangent, vertical"
    ],
    ["Anemometer", "Pyranometer", "Sunshine recorder", "All of the above"],
    ["Anemometer", "Pyrheliometer", "Sunshine recorder", "All of the above"],
    ["Latitude", "Slope", "Surface azimuth angle", "Declination"],
    [
      "Hour angle",
      "Declination",
      "Surface azimuth angle",
      "Solar altitude angle"
    ],
    ["Water heating", "Distillation", "Drying", "All of the above"],
    ["1.8 x 10^8 MW", "1.8 x 10^11 MW", "1.8 x 10^14 MW", "1.8 x 10^17 MW"],
    ["Wind energy", "Biomass energy", "Wave energy", "All of the above"],
    ["North", "South", "East", "West"],
    [
      "putting a selective coating on the plate",
      "evacuating the space above the absorber plate",
      "both (A) and (B)",
      "None of the above"
    ],
  ];

  var correctAnswers = [
    "Paraboloid dish collector",
    "Thermal energy",
    "Flat plate collector",
    "Two axes",
    "32",
    "1367 W/m2",
    "± 3.3",
    "both (A) and (B)",
    "all of the above",
    "Direct radiation + Diffuse Radiation",
    "normal, horizontal",
    "Pyranometer",
    "Pyrheliometer",
    "Slope",
    "Surface azimuth angle",
    "All of the above",
    "1.8 x 10^11 MW",
    "All of the above",
    "South",
    "both (A) and (B)"
  ];
}

class Quiz2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz2State();
  }
}

class Quiz2State extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),

                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        "Question ${questionNumber + 1} of ${unit2.questions.length}",
                        style: new TextStyle(fontSize: 22.0),
                      ),
                      new Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                ),

                //image
                new Padding(padding: EdgeInsets.all(10.0)),
                Expanded(
                  child: Text(
                    unit2.questions[questionNumber],
                    style: new TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                Expanded(
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //button 1
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit2.choices[questionNumber][0] ==
                              unit2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit2.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit2.choices[questionNumber][1] ==
                              unit2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit2.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit2.choices[questionNumber][2] ==
                              unit2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit2.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit2.choices[questionNumber][3] ==
                              unit2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit2.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (unit2.choices[questionNumber][0] ==
                              unit2.correctAnswers[questionNumber]) {
                            print(unit2.correctAnswers[questionNumber]);
                          } else if (unit2.choices[questionNumber][1] ==
                              unit2.correctAnswers[questionNumber]) {
                            print(unit2.correctAnswers[questionNumber]);
                          } else if (unit2.choices[questionNumber][2] ==
                              unit2.correctAnswers[questionNumber]) {
                            print(unit2.correctAnswers[questionNumber]);
                          } else if (unit2.choices[questionNumber][3] ==
                              unit2.correctAnswers[questionNumber]) {
                            print(unit2.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(unit2.correctAnswers[questionNumber]),
                            ),
                          );
                        },
                        child: new Text(
                          "Show Answer",
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: setQuiz,
                        child: new Text(
                          "Quit",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void setstateq() {
    setState(() {
      questionNumber = 0;
      finalScore = 0;
    });
  }

  void setQuiz() {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(title: Text('Quit this Quiz?'), children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/second', (Route<dynamic> route) => false);
              setstateq();
            },
            child: Text(
              'Quit ',
              style: TextStyle(color: Colors.red),
            ),
          ),
          SimpleDialogOption(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
            ),
          )
        ]);
      },
    );
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == unit2.questions.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: $score",
                style: new TextStyle(fontSize: 35.0),
              ),
              new Padding(padding: EdgeInsets.all(30.0)),
              new FlatButton(
                color: Colors.red,
                onPressed: () {
                  questionNumber = 0;
                  finalScore = 0;
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Quiz2()));
                },
                child: new Text(
                  "Reset Quiz",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
