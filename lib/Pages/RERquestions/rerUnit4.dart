import 'package:flutter/material.dart';
import '../../Widgets/Renewable.dart';

var finalScore = 0;
var questionNumber = 0;
var unit4 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1-When did the development of wind power in India began?",
    "2-At what range of speed is the electricity from the wind turbine is generated?",
    "3-What is the diameter of wind turbine blades?",
    "4-What are used to turn wind energy into electrical energy?",
    "5-What type of energy is wind energy?",
    "6-What happens when the land near the earth’s equator is heated?",
    "7-Which country created wind mills?",
    "8-What is the main source for the formation of wind?",
    "9-How much wind power does India hold?",
    "10-How much is the energy available in the winds over the earth surface is estimated to be?",
    "11-What does Heating and cooling of the atmosphere generates?",
    "12-The amount of energy available in the wind at any instant is proportional to ___ of the wind speed.",
    "13-Wind energy is harnessed as ______ energy with the help of windmill or turbine.",
    "14-Winds having following speed are suitable to operate wind turbines.",
    "15-The following is (are) the classification of winds",
    "16-Global Cold wind move from",
    "17-Global Cold wind generated from Oceans moves to",
    "18-force is responsible for forcing the global winds towards westernly direction.",
    "19-Global winds towards westernly direction are known as",
    "20-Uneven heating occurs on land surface and water bodies are due to "
  ];

  var choices = [
    ["1965", "1954", "1990", "1985"],
    ["100 – 125 mph", "450 – 650 mph", "250 – 450 mph", "30-35 mph"],
    ["320 feet", "220 feet", "80 feet", "500 feet"],
    ["Turbine", "Turbine", "Yaw motor", "Yaw motor"],
    [
      "Renewable energy",
      "Non-renewable energy",
      "Conventional energy",
      "Commercial energy"
    ],
    [
      "All the oceans gets heated up",
      "Small wind currents are formed",
      "Rise in tides",
      "Large atmospheric winds are created"
    ],
    ["Egypt", "Mongolia", "Iran", "Japan"],
    ["Uneven land", "Sun", "Vegetation", "Seasons"],
    ["20,000 MW", "12,000 MW", "140,000 MW", "5000 MW"],
    ["2.9 X 120 MW", "1.6 X 107 MW", "1 MW", "5 MW"],
    [
      "Thermo line circulation",
      "Radiation currents",
      "Convection currents",
      "Conduction currents"
    ],
    [
      "Square root power of two",
      "Square root power of three",
      "Square power",
      "Cube power"
    ],
    ["Mechanical", "Solar", "Electrical", "Heat"],
    ["5 – 25m/s", "10 – 35m/s", "20 – 45m/s", "30 – 55m/s"],
    ["Global wind", "Local wind", "Both (A) and (B)", "None of the above"],
    [
      "Polar to equatorial region",
      "Equatorial to polar region",
      "Equatorial to oceanic region",
      "Oceanic to Equatorial region"
    ],
    ["Mountains", "Equator", "Plain areas", "Poles"],
    ["Coriolis", "Gravitational", "Centripetal", "Centrifugal"],
    ["Trade winds", "Western winds", "Eastern winds", "None of the above"],
    ["Air Currents", "Solar radiation", "Lunar eclipse", "None of the above"],
  ];

  var correctAnswers = [
    "1990",
    "30-35 mph",
    "220 feet",
    "Turbine",
    "Renewable energy",
    "Large atmospheric winds are created",
    "Iran",
    "Sun",
    "20,000 MW",
    "1.6 X 107 MW",
    "Convection currents",
    "Cube power",
    "Mechanical",
    "5 – 25m/s",
    "Both (A) and (B)",
    "Polar to equatorial region",
    "Plain areas",
    "Coriolis",
    "Trade winds",
    "Solar radiation"
  ];
}

class Quiz4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz4State();
  }
}

class Quiz4State extends State<Quiz4> {
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
                        "Question ${questionNumber + 1} of ${unit4.questions.length}",
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
                    unit4.questions[questionNumber],
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
                          if (unit4.choices[questionNumber][0] ==
                              unit4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit4.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit4.choices[questionNumber][1] ==
                              unit4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit4.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit4.choices[questionNumber][2] ==
                              unit4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit4.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit4.choices[questionNumber][3] ==
                              unit4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit4.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (unit4.choices[questionNumber][0] ==
                              unit4.correctAnswers[questionNumber]) {
                            print(unit4.correctAnswers[questionNumber]);
                          } else if (unit4.choices[questionNumber][1] ==
                              unit4.correctAnswers[questionNumber]) {
                            print(unit4.correctAnswers[questionNumber]);
                          } else if (unit4.choices[questionNumber][2] ==
                              unit4.correctAnswers[questionNumber]) {
                            print(unit4.correctAnswers[questionNumber]);
                          } else if (unit4.choices[questionNumber][3] ==
                              unit4.correctAnswers[questionNumber]) {
                            print(unit4.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(unit4.correctAnswers[questionNumber]),
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
      if (questionNumber == unit4.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => Quiz4()));
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
