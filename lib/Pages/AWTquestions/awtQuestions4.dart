import 'package:finalpractice/Widgets/AWT.dart';
import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var set4 = new AwtUnit();

class AwtUnit {
  var questions = [
    "Ques.1. If a body reflect entire radiation incident on it, then it is known as",
    "Ques.2. A digital timer in a resistance welding machines provides",
    "Ques.3. Which of the following generators are used in arc welding",
    "Ques.4. Which of the following is of high value in case of induction heating?",
    "Ques.5. Induction heating process is based on",
    "Ques.6. In case of induction hardening",
    "Ques.7. Induction heating, the depth upto which the current will penetrate is proportional to",
    "Ques.8. The method of heating used in an electric room heat convector is",
    "Ques.9. Highest power factor can be expected in which method of heating?",
    "Ques.10. Which of the following heating elements can give the highest temperature in resistance heating?",
    "Ques.11. If the temperature coefficient of silver is 0.0038, the temperature coefficient for Manganin may be expected to be",
    "Ques.12. Nichrome wire can be safely used for heating upto",
    "Ques.13. If a furnace is to be heating to temperatures around 1500°C which of the following material for heating elements should be selected?",
    "Ques.14. Which of the following elements will have the least range of temperature?",
    "Ques.15. Which of the following device is necessarily required for automatic temperature control in a furnace?",
    "Ques.16. Furnaces used for cremation use",
    "Ques.17. Induction heating is possible",
    "Ques.18. A piece of steel is to be heated to a predetermined temperature. In which of the following furnace it will attend the desired temperature in the shortest possible time?",
    "Ques.19. In a domestic cake baking oven, the temperature is controlled by",
    "Ques.20. If the supply frequency is reduced from 50 Hz to 1 Hz, which of the following method of heating will be least affected",
  ];

  var choices = [
    ["Black body", "Gray body", "White Body", "Transparent Body"],
    [
      "Accurate timing",
      "Identical welds",
      "Synchronous operation",
      "All of these"
    ],
    [
      "Shunt generators",
      "Series Generator",
      "Cumulative compound generators",
      "Differential compound generators"
    ],
    ["Voltage", "Current", "Frequency", "All of the above"],
    [
      "Electro-magnetic induction principle",
      "Resistance heating principle",
      "Thermal ion release principle",
      "Nucleate heating principle"
    ],
    [
      "Heating occurs uniformly in the part to be heated",
      "Heating occurs in the core of the part to be heated",
      "Heating occurs in the center of the part to be heated",
      "Heating is more at the core and less on the surface of the part to be heated"
    ],
    ["Frequency", "(Frequency)2", "1/(Frequency)", "1/(Frequency)1/2"],
    [
      "Resistance heating",
      "Induction heating",
      "Dielectric heating",
      "Arc heating"
    ],
    [
      "Electric arc heating",
      "Dielectric heating",
      "Induction heating",
      "Resistance heating"
    ],
    ["Copper", "Nickel Copper", "Nichrome", "Silicon’s carbide"],
    ["0.001", "0.00002", "0.0038", "0.0001"],
    ["2000 °C", "1600 °C", "1450 °C", "1150 °C"],
    ["Eureka", "Kanthal", "Platinium molybdenum carbo compound", "Nichrome"],
    ["Eureka", "Nichrome", "Silicon carbide", "Kanthal"],
    [
      "Thermocouple",
      "Thermostat",
      "Autotransformer",
      "Heating elements of variable resistance material"
    ],
    [
      "Resistance heating",
      "Induction heating",
      "Dielectric heating",
      "Arc heating"
    ],
    [
      "On ferrous material only",
      "On magnetic material only",
      "On dc supply only",
      "On AC supply only"
    ],
    [
      "Oil fired furnace with the heat exchanger",
      "Electric resistance furnace",
      "Induction heating furnace",
      "Electric arc furnace"
    ],
    [
      "Series-parallel operation",
      "Autotransformer",
      "Thermostat",
      "Voltage variation"
    ],
    [
      "Resistance heating",
      "Dielectric heating",
      "Induction heating",
      "None of above"
    ],
  ];

  var correctAnswers = [
    "Black body",
    "All of these",
    "Differential compound generators",
    "Frequency",
    "Electro-magnetic induction principle",
    "Heating occurs uniformly in the part to be heated",
    "1/(Frequency)1/2",
    "Resistance heating",
    "Resistance heating",
    "Silicon’s carbide",
    "0.00002",
    "1150 °C",
    "Platinium molybdenum carbo compound",
    "Eureka",
    "Thermostat",
    "Resistance heating",
    "On AC supply only",
    "Induction heating furnace",
    "Thermostat",
    "Resistance heating",
  ];
}

class AWTSet4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AWTSet4State();
  }
}

class AWTSet4State extends State<AWTSet4> {
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
                        "Question ${questionNumber + 1} of ${set4.questions.length}",
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
                    set4.questions[questionNumber],
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
                          if (set4.choices[questionNumber][0] ==
                              set4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set4.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set4.choices[questionNumber][1] ==
                              set4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set4.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set4.choices[questionNumber][2] ==
                              set4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set4.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set4.choices[questionNumber][3] ==
                              set4.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set4.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (set4.choices[questionNumber][0] ==
                              set4.correctAnswers[questionNumber]) {
                            print(set4.correctAnswers[questionNumber]);
                          } else if (set4.choices[questionNumber][1] ==
                              set4.correctAnswers[questionNumber]) {
                            print(set4.correctAnswers[questionNumber]);
                          } else if (set4.choices[questionNumber][2] ==
                              set4.correctAnswers[questionNumber]) {
                            print(set4.correctAnswers[questionNumber]);
                          } else if (set4.choices[questionNumber][3] ==
                              set4.correctAnswers[questionNumber]) {
                            print(set4.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(set4.correctAnswers[questionNumber]),
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
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.red,
                        onPressed: setQuiz,
                        child: new Text(
                          "Quit",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ))),
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
                  '/first', (Route<dynamic> route) => false);
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
      if (questionNumber == set4.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => AWTSet4()));
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
