import 'package:finalpractice/Widgets/AWT.dart';
import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var set2 = new AwtUnit();

class AwtUnit {
  var questions = [
    "Ques.1. Arc blow is a welding defect which is encountered in",
    "Ques.2. A rectifier for welding has voltage/current characteristic as",
    "Ques.3. The advantages of welding motor generator is usually in the range of",
    "Ques.4. For welding duty rectifier commonly used are",
    "Ques.5. In resistance welding, aluminum, as compared to steel, requires",
    "Ques.6. Which of the following is not a welding accessory?",
    "Ques.7. Chipping hammers are used",
    "Ques.8. The welding electric circuit is",
    "Ques.9. The eyes of the welding operator must be protected against",
    "Ques.10.  The danger of electric shock is maximum",
    "Ques.11. The welding transformer used in resistance welding will",
    "Ques.12. In resistance welding, the SCR contactor will close during",
    "Ques.13. In a resistance welder, pneumatic pressure is applied during",
    "Ques.14. A 10 SWG electrode usually operates in the current range",
    "Ques.15. TIG welding is",
    "Ques.16. The electrode is not consumed in case of",
    "Ques.17. The flux used in TIG welding is",
    "Ques.18. Which method would you recommend for the welding of aluminum alloys?",
    "Ques.19. Argon is",
    "Ques.20. With manual arc welding in mild steel, the metal deposition rate will be nearly",
  ];

  var choices = [
    [
      "Arc welding using D.C current",
      "Arc welding using A.C current",
      "Gas welding",
      "Thermit welding"
    ],
    ["Drooping", "Rising", "Static", "Variable"],
    [
      "Easily Portable",
      "Used for ferrous and Non-ferrous material",
      "Can be used for all welding position",
      "Less maintenance"
    ],
    [
      "Mercury arc rectifier",
      "Selenium metal rectifier",
      "Any of the above",
      "None of the above"
    ],
    [
      "Larger welding time",
      "Smaller welding time",
      "Equal welding time",
      "Welding time depends upon the value of weld current"
    ],
    ["Electrode holder", "Work Clamp", "Cable", "Gloves"],
    [
      "To remove slag from welding",
      "To align the pieces to be welded",
      "For tage welding",
      "For marking spots to be welded"
    ],
    [
      "Always earthed",
      "Never earthed",
      "Through cables only",
      "None of the above"
    ],
    [
      "Ultraviolet radiation",
      "Infrared radiations",
      "Both (A) and (B)",
      "Solar radiation"
    ],
    [
      "During arcing",
      "After arcing",
      "Before welding",
      "While inserting an electrode into the holder"
    ],
    [
      "Step up current",
      "Step down current",
      "Step up voltage",
      "Step up power"
    ],
    ["Squeeze time", "Hold time", "Weld time", "Weld as well as of the time"],
    [
      "Squeeze time",
      "Weld time",
      "Squeeze and weld time",
      "Squeeze, weld and hold time"
    ],
    [
      "25 to 45 Amperes",
      "50 to 75 Amperes",
      "95 to 135 Amperes",
      "400 to 600 Amperes"
    ],
    [
      "Temperature insulated Gas welding",
      "Tungsten Inert gas welding",
      "Thermally Induced gas welding",
      "Thorium Iodine gas welding"
    ],
    ["DC arc welding", "AC arc welding", "Gas welding", "TIG welding"],
    ["Ammonium Chloride", "Borax", "Ash", "None"],
    [
      "DC arc welding",
      "AC arc welding",
      "Tungsten Welding",
      "Acetylene oxygen gas welding"
    ],
    ["Inactive gas", "Inert gas", "Rare gas", "Oxidizing agent"],
    [
      "2 to 5 kg per hour",
      "5 to 10 kg per hour",
      "10 to 20 kg per hour",
      "20 to 50 kg per hour"
    ],
  ];

  var correctAnswers = [
    "Arc welding using D.C current",
    "Drooping",
    "Less maintenance",
    "Selenium metal rectifier",
    "Smaller welding time",
    "Gloves",
    "To remove slag from welding",
    "Always earthed",
    "Both (A) and (B)",
    "While inserting an electrode into the holder",
    "Step up current",
    "Weld time",
    "Squeeze, weld and hold time",
    "95 to 135 Amperes",
    "Tungsten Inert gas welding",
    "TIG welding",
    "None",
    "Tungsten Welding",
    "Inert gas",
    "2 to 5 kg per hour",
  ];
}

class AWTSet2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AWTSet2State();
  }
}

class AWTSet2State extends State<AWTSet2> {
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
                        "Question ${questionNumber + 1} of ${set2.questions.length}",
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
                    set2.questions[questionNumber],
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
                          if (set2.choices[questionNumber][0] ==
                              set2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set2.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set2.choices[questionNumber][1] ==
                              set2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set2.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set2.choices[questionNumber][2] ==
                              set2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set2.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set2.choices[questionNumber][3] ==
                              set2.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set2.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (set2.choices[questionNumber][0] ==
                              set2.correctAnswers[questionNumber]) {
                            print(set2.correctAnswers[questionNumber]);
                          } else if (set2.choices[questionNumber][1] ==
                              set2.correctAnswers[questionNumber]) {
                            print(set2.correctAnswers[questionNumber]);
                          } else if (set2.choices[questionNumber][2] ==
                              set2.correctAnswers[questionNumber]) {
                            print(set2.correctAnswers[questionNumber]);
                          } else if (set2.choices[questionNumber][3] ==
                              set2.correctAnswers[questionNumber]) {
                            print(set2.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(set2.correctAnswers[questionNumber]),
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
      if (questionNumber == set2.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => AWTSet2()));
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
