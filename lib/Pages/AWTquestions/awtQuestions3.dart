import 'package:finalpractice/Widgets/AWT.dart';
import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var set3 = new AwtUnit();

class AwtUnit {
  var questions = [
    "Ques.1. Which of the following automatic welding process is likely to give the maximum rate of metal deposition?",
    "Ques.2. The load taken by a welding transformer is",
    "Ques.3. The power factor of the load using the welding transformer is usually",
    "Ques.4. Bare type electrodes are",
    "Ques.5. For power factor correction of welding transformer, a capacitor is usually connected on",
    "Ques.6. The Position of an arc welding is",
    "Ques.7. MIG welding is",
    "Ques.8. The advantages of resistance welding is",
    "Ques.9. Which of the following is not resistance welding?",
    "Ques.10. When is the thickness of the sheet, the tip diameter for spot welding is usually",
    "Ques.11. In a synchronous welding control, the welding current begins at",
    "Ques.12. The function of SCR contactor in resistance welding machine is",
    "Ques.13. Which of the following is the unit for thermal conductivity?",
    "Ques.14. Which is not the type of butt welding process?",
    "Ques.15. The main purpose of the light coated electrode is to",
    "Ques.16. The highest value of thermal conductivity is for",
    "Ques.17. The type of electrode used in the seam welding is",
    "Ques.18. Which of the following outlines the features of D.C welding over A.C welding?",
    "Ques.19. The quantity of heat required to change the temperature of 1 gm of ice from −6°C to −5°C is known as",
    "Ques.20. A body at the temperature T K radiates heat in proportion to",
  ];

  var choices = [
    [
      "Gas shielded bare wire",
      "Submerged arc (single wire)",
      "Multiple power submerged arc",
      "Continuous flux covered electrode"
    ],
    [
      "Purely resistive",
      "Non-inductive",
      "Highly-Inductive",
      "Highly- Capacitive"
    ],
    [
      "Unity",
      "Nearly unity lagging",
      "Nealy unity leading",
      "Very low of the order of 0.3 to 0.5 lagging"
    ],
    ["Consumable", "Non-consumable", "Any of the above", "None of the above"],
    [
      "Primary side",
      "Secondary side",
      "Parallel to arcing electrodes",
      "Parallel to mains"
    ],
    [
      "Flat position ",
      "Horizontal position",
      "Vertical Position",
      "All of the above"
    ],
    [
      "Mild steel inert gas welding",
      "Medium inert gas welding",
      "Maximum inner depth gas welding",
      "Metal inert gas welding"
    ],
    [
      "Less skill required",
      "Reduced distortion",
      "No need of filler material",
      "All of the above"
    ],
    ["Projection welding", "MIG welding", "Seam welding", "Flash butt welding"],
    ["2t", "t", "√t", "1/t"],
    [
      "Later than the power factor angle",
      "Before the power factor angle",
      "At the power factor angle",
      "None of these"
    ],
    [
      "To provide an accurate weld time for each weld",
      "To connect the large power supply to welding by closing a small switch",
      "To provide full wave rectification of the welding current",
      "To avoid saturation of transformation core"
    ],
    ["W/m °K", "W/m2 °C", "W2/m °K", "W2/m2 °K"],
    [
      "Upset butt Welding",
      "Downset butt welding",
      "Flash butt welding",
      "Percussion butt welding"
    ],
    [
      "Increase arc stability",
      "Reduce Voltage",
      "Reduce Current",
      "Any of the above"
    ],
    ["Solid ice", "Melting ice", "Water", "Steam"],
    [
      "Bare wire Rods",
      "Roller electrodes",
      "Heavily coated electrode",
      "Lightly covered electrode"
    ],
    [
      "The cost of equipment is higher",
      "The efficiency is higher due to the absence of a rotating part",
      "The cost of equipment is cheaper",
      "It is less safe as the no-load voltage is high"
    ],
    [
      "Latent heat of fusion",
      "Temperature coefficient",
      "Specific heat",
      "Latent heat of vaporization"
    ],
    ["T2", "1/T2", "T4", "1/T4"],
  ];

  var correctAnswers = [
    "Multiple power submerged arc",
    "Highly-Inductive",
    "Very low of the order of 0.3 to 0.5 lagging",
    "Consumable",
    "Primary side",
    "All of the above",
    "Metal inert gas welding",
    "All of the above",
    "MIG welding",
    "√t"
        "At the power factor angle",
    "To connect the large power supply to welding by closing a small switch",
    "W/m °K",
    "Downset butt welding",
    "Increase arc stability",
    "Solid Ice",
    "Roller electrodes",
    "The cost of equipment is higher",
    "Specific heat",
    "T4",
  ];
}

class AWTSet3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AWTSet3State();
  }
}

class AWTSet3State extends State<AWTSet3> {
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
                        "Question ${questionNumber + 1} of ${set3.questions.length}",
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
                    set3.questions[questionNumber],
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
                          if (set3.choices[questionNumber][0] ==
                              set3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set3.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set3.choices[questionNumber][1] ==
                              set3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set3.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set3.choices[questionNumber][2] ==
                              set3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set3.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set3.choices[questionNumber][3] ==
                              set3.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set3.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (set3.choices[questionNumber][0] ==
                              set3.correctAnswers[questionNumber]) {
                            print(set3.correctAnswers[questionNumber]);
                          } else if (set3.choices[questionNumber][1] ==
                              set3.correctAnswers[questionNumber]) {
                            print(set3.correctAnswers[questionNumber]);
                          } else if (set3.choices[questionNumber][2] ==
                              set3.correctAnswers[questionNumber]) {
                            print(set3.correctAnswers[questionNumber]);
                          } else if (set3.choices[questionNumber][3] ==
                              set3.correctAnswers[questionNumber]) {
                            print(set3.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(set3.correctAnswers[questionNumber]),
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
      if (questionNumber == set3.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => AWTSet3()));
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
