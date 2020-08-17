import 'package:flutter/material.dart';
import '../../Widgets/Renewable.dart';

var finalScore = 0;
var questionNumber = 0;
var unit3 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1-Geothermal energy is the thermal energy present",
    "2-The following is (are) the visible sign(s) of the large amount of heat lying in the earth’s interior.",
    "3-The centre of earth is estimated to have a high temperature of about",
    "4-The molten rock within the earth is",
    "5-The following is (are) type(s) of Geothermal resource",
    "6-When the water is ejected from earth’s interior in the form of hot water, it is called",
    "7-Water boils underground in a hydrothermal when it has pressure of about ____ atm and temperature of about ____ °C.",
    "8-In dry steam hydrothermal plant, we use",
    "9-In which of the following type(s) of plant(s) refrigerant is used as working medium",
    "10-The following plant runs on binary cycle",
    "11-The efficiency of geothermal plant is about",
    "12-Hydrothermal fluids are _____ in nature",
    "13-Pugga valley in Ladakh is suitable for which among the following power generation",
    "14-Presence of non – condensable gasses in a geo - pressured water causes",
    "15-Direct conversion of heat energy into electrical energy is possible through",
    "16-Which of the following liquid metal is not used as a magneto hydrodynamic generation (MHD) working fluid?",
    "17-The nature of the current developed in MHD generator is",
    "18-Coal is processed and burnt in the combustor of a hybrid MHD at a high temperature and pressure with the preheated air to form which among the following element?",
    "19-The harmful emissions such as sulphur are removed from gas before it is discharged to the atmosphere through which instrument?",
    "20-What is the working fluid in closed cycle MHD system?"
  ];

  var choices = [
    [
      "On the surface of the earth",
      "In the interior of the earth",
      "On the surface of the ocean",
      "None of the above"
    ],
    ["Volcanoes", "Geysers", "Hot springs", "All of the above"],
    ["1,000 K", "4,000 K", "6,000 K", "10,000 K"],
    ["Igneous", "Magma", "Sedimentary", "Metamorphic"],
    ["Hydrothermal", "Hot dry rock", "Geopressurised", "All of the above"],
    ["Geyser", "Hot springs", "Both (A) and (B)", "None of the above"],
    [" 3, 100", "5, 120", "6, 140", "7, 165"],
    ["Carnot cycle", "Brayton cycle", "Rankine Cycle", "None of the above"],
    [
      "Vapour dominated plant",
      "Liquid dominated high temperature plant",
      "Liquid dominated low temperature plant",
      "all of the above"
    ],
    [
      "Vapour dominated plant",
      "Liquid dominated high temperature plant",
      "Liquid dominated low temperature plant",
      "All of the above"
    ],
    ["5%", "15%", "25%", "35%"],
    ["Corrosive", "Abrasive", "Both (A) and (B)", "All of the above"],
    ["Solar", "Geo thermal", "Wind", "None of these"],
    [
      "Pollution problem",
      "Corrosion problem",
      "Flow problem",
      "All of the above"
    ],
    [
      "MHD generators",
      "Fuel or solar cells",
      "Thermionic converters",
      "Both (a) and (c)"
    ],
    ["Potassium", "Sodium", "Lithium", "All of the above"],
    ["ac", "dc", "Both a and b", "None of these"],
    ["Steam", "Plasma", "Coke", "None of these"],
    ["Duct", "Mufflers", "Stark", "All of these."],
    ["Helium and argon", "Coal", "Natural gas", "Potassium"],
  ];

  var correctAnswers = [
    "In the interior of the earth",
    "All of the above",
    "10,000 K",
    "Magma",
    "All of the above",
    "Hot springs",
    "7, 165",
    "Rankine Cycle",
    "Liquid dominated low temperature plant",
    "Liquid dominated low temperature plant",
    "15%",
    "Both (A) and (B)",
    "Geo thermal",
    "All of the above",
    "Both (a) and (c)",
    "Sodium",
    "dc",
    "Plasma",
    "Stark",
    "Helium and argon"
  ];
}

class Quiz3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz3State();
  }
}

class Quiz3State extends State<Quiz3> {
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
                        "Question ${questionNumber + 1} of ${unit3.questions.length}",
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
                    unit3.questions[questionNumber],
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
                          if (unit3.choices[questionNumber][0] ==
                              unit3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit3.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit3.choices[questionNumber][1] ==
                              unit3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit3.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit3.choices[questionNumber][2] ==
                              unit3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit3.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit3.choices[questionNumber][3] ==
                              unit3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit3.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (unit3.choices[questionNumber][0] ==
                              unit3.correctAnswers[questionNumber]) {
                            print(unit3.correctAnswers[questionNumber]);
                          } else if (unit3.choices[questionNumber][1] ==
                              unit3.correctAnswers[questionNumber]) {
                            print(unit3.correctAnswers[questionNumber]);
                          } else if (unit3.choices[questionNumber][2] ==
                              unit3.correctAnswers[questionNumber]) {
                            print(unit3.correctAnswers[questionNumber]);
                          } else if (unit3.choices[questionNumber][3] ==
                              unit3.correctAnswers[questionNumber]) {
                            print(unit3.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(unit3.correctAnswers[questionNumber]),
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
      if (questionNumber == unit3.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => Quiz3()));
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
