import 'package:flutter/material.dart';
import '../../Widgets/Renewable.dart';

var finalScore = 0;
var questionNumber = 0;
var unit5 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1-The installed capacity of wind energy in India is about",
    "2-Tidal energy utilizes",
    "3-In a fuel cell, electrical energy is produced by",
    "4-Thermal gradient in a geo thermal plant is given by",
    "5-Tidal energy development needs",
    "6-The potential of developing tidal power in India is in",
    "7-The following is the correct order of energy conversion in thermal power plants",
    "8--In thermal power plant, turbine is placed",
    "9-In the steam condensing power plants",
    "10-In thermal power plants, the dust of flue gases is trapped by",
    "11-The path of flue gases in Thermal power plant is",
    "12-The following is not a component of Thermal power plant",
    "13-With the increase in _____ the efficiency obeys the ‘law of diminishing returns’",
    "14-With the increase in _____ the efficiency obeys the ‘straight line law’",
    "15--Fluid fuels are handled by",
    "16-For steam boilers, the fuel(s) is (are) mainly",
    "17-The most common method(s) used for burning of coal is (are)",
    "18-A ‘stroker’ is a power operated fuel ___ mechanism",
    "19-The spreader stroker, secondary air is supplied",
    "20-The following is dry type dust collectors"
  ];

  var choices = [
    ["8000 MW", "1500 MW", "6000 MW", "4000 MW"],
    [
      "Kinetic energy of water",
      "Potential energy of water.",
      "Both (a) and (b)",
      "None of these."
    ],
    [
      "Reaction of hydrogen with oxygen",
      "Thermionic action",
      "Combustion of fuel in the absence of oxygen.",
      "None of the above."
    ],
    [
      "Heat flux * thermal conductivity",
      "Heat flux / thermal conductivity",
      "Thermal conductivity / heat flux",
      "None of these"
    ],
    [
      "Huge capacity and long construction time.",
      "Huge capacity and low construction time.",
      "Low capacity and long construction time.",
      "Low capacity and low construction time."
    ],
    ["Kutch", "Ran", "San joe", "Severn"],
    [
      "Chemical energy – Mechanical energy – Electrical energy",
      "Mechanical energy – Chemical energy – Electrical energy",
      "Wind energy – Mechanical energy – Electrical energy",
      "Heat energy – Electrical energy – Mechanical energy"
    ],
    [
      "before boiler",
      "in between boiler and generator",
      "after generator",
      "None of the above"
    ],
    [
      "The amount of energy extracted per kg of steam is increased",
      "the steam, converted into water, can be re-circulated with the help of pump",
      "Both (A) and (B)",
      "None of the above"
    ],
    ["Precipitator", "Economizer", "Economizer", "Air preheater"],
    [
      "Boiler – Economizer – Superheater– Air preheater",
      "Boiler – Superheater – Air preheater – Economizer",
      "Boiler – Air preheater – Superheater – Economizer",
      "Boiler – Superheater – Economizer – Air preheater"
    ],
    ["Condenser", " Cooling tower", "Turbine", "Fuel tank"],
    ["Pressure", "Temperature", "Volume", "All of the above"],
    ["Pressure", "Temperature", "Temperature", "All of the above"],
    ["burners", "stokers", "both (A) and (B)", "None of the above"],
    ["Bituminous coal", "Fuel oil", "Natural gas", "All of the above"],
    [
      "Stroker firing",
      "Pulverized fuel firing",
      "both (A) and (B)",
      "None of these"
    ],
    ["Burning", "Feeding", "Handling", "Storage"],
    [
      "through holes",
      "through nozzles",
      "from bottom side",
      "any of the above"
    ],
    ["Spray type", "Packed type", "Impingement type", "cyclone separator"],
  ];

  var correctAnswers = [
    "8000 MW",
    "Potential energy of water.",
    "Reaction of hydrogen with oxygen",
    "Thermal conductivity / heat flux",
    "Huge capacity and long construction time.",
    "Kutch",
    "Chemical energy – Mechanical energy – Electrical energy",
    "in between boiler and generator",
    "Both (A) and (B)",
    "Precipitator",
    "Boiler – Superheater – Economizer – Air preheater",
    "Fuel tank",
    "Pressure",
    "Temperature",
    "both (A) and (B)",
    "All of the above",
    "both (A) and (B)",
    "Feeding",
    "through nozzles",
    "cyclone separator"
  ];
}

class Quiz5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Quiz5State();
  }
}

class Quiz5State extends State<Quiz5> {
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
                        "Question ${questionNumber + 1} of ${unit5.questions.length}",
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
                    unit5.questions[questionNumber],
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
                          if (unit5.choices[questionNumber][0] ==
                              unit5.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit5.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit5.choices[questionNumber][1] ==
                              unit5.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit5.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit5.choices[questionNumber][2] ==
                              unit5.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit5.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit5.choices[questionNumber][3] ==
                              unit5.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit5.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (unit5.choices[questionNumber][0] ==
                              unit5.correctAnswers[questionNumber]) {
                            print(unit5.correctAnswers[questionNumber]);
                          } else if (unit5.choices[questionNumber][1] ==
                              unit5.correctAnswers[questionNumber]) {
                            print(unit5.correctAnswers[questionNumber]);
                          } else if (unit5.choices[questionNumber][2] ==
                              unit5.correctAnswers[questionNumber]) {
                            print(unit5.correctAnswers[questionNumber]);
                          } else if (unit5.choices[questionNumber][3] ==
                              unit5.correctAnswers[questionNumber]) {
                            print(unit5.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(unit5.correctAnswers[questionNumber]),
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
      if (questionNumber == unit5.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => Quiz5()));
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
