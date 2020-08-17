import 'package:finalpractice/Widgets/AWT.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

var finalScore = 0;
var questionNumber = 0;
var unit1 = new AwtUnit();

class AwtUnit {
  var questions = [
    "Ques1- In arc welding, the temperature of the arc is of the order of",
    "Ques.2. The arc has",
    "Ques.3. Arc can be produced by",
    "Ques.4. The resistance of the arc",
    "Ques.5. In arc welding, the voltage on A.C supply system is in the range",
    "Ques.6. In arc welding by dc supply, the voltage required is",
    "Ques.7. In arc welding, once the arc is struck, the voltage required to maintain the arc will be",
    "Ques.8. A DC generator used for A.C welding should have",
    "Ques.9. The Polarity of A.C welding sets is",
    "Ques.10. As the thickness of the part to be welded increases, which of the following parameter for ac welding should also increase?",
    "Ques.11. In “argon arc welding” the electrode is made of",
    "Ques.12. In argon arc welding the purpose of using argon is",
    "Ques.13. Steel rails are welded by",
    "Ques.14. In gas welding the gases used are",
    "Ques.15. Steel pipes are manufactured by",
    "Ques.16. Which of the following is different from the remaining?",
    "Ques.17. Two 3 mm thick mild steel sheets are to be welded. The electrode of 18, 16, 3 and 10 Nos are available which one would you select?",
    "Ques.18. What is an example of plastic welding?",
    "Ques.19. Gray iron is usually welded by",
    "Ques.20. In ultrasonic welding, the frequency range is generally",
  ];

  var choices = [
    ["100 C", "1000 C", "3500 C", "35000° C"],
    [
      "Linear resistance characteristics",
      "Positive resistance characteristics",
      "Negative resistance characteristics",
      "Highly inductive characteristics"
    ],
    [
      "AC current only",
      "DC current only",
      "Either AC or DC current",
      "All of the above"
    ],
    [
      "Decrease with an increase of the current",
      "Increases with increases of the current",
      "Does not depends on current",
      "None of the above"
    ],
    ["1000-1200 V", "400-500 V", "200-250 V", "70-100 V"],
    ["10 to 20 V", "50 to 60 V", "100 to 120 V", "200 to 250 V"],
    ["20-30 V", "100-120 V", "200-220 V", "500-1000 V"],
    [
      "Rising characteristics",
      "Dropping Characteristics",
      "Straight characteristics",
      "All of the above"
    ],
    ["Positive", "Negative", "No polarity", "Infinite"],
    ["Voltage", "Current", "Frequency", "All of the above"],
    ["Carbon", "Steel", "Tungsten", "No electrode is needed"],
    [
      "To prevent oxidation of metal by coming in contact with the oxygen of the air",
      "To create an inert atmosphere around the job to be welded",
      "To obviate the necessity for using flux",
      "All of the above"
    ],
    [
      "Resistance welding",
      "Thermit Welding",
      "Argon arc welding",
      "Gas welding"
    ],
    [
      "Oxygen and nitrogen",
      "Argon and Helium",
      "Helium and carbon dioxide",
      "Acetylene and oxygen"
    ],
    [
      "Arc welding",
      "Thermit welding",
      "Resistance welding",
      "Argon arc welding"
    ],
    ["Spot welding", "Seam welding", "Butt welding", "Argon arc welding"],
    ["No: 10", "No: 3", "No: 16", "No: 18"],
    [
      "Gas Welding",
      "Resistance welding",
      "Thermit welding without pressure",
      "None of these"
    ],
    ["Arc welding", "Gas welding", "TIG welding", "MIG welding"],
    [
      "100 – 4000 cps",
      "4000-20000 cps",
      "20,000-40,000 cps",
      "80,000-200,000 cps"
    ],
  ];

  var correctAnswers = [
    "3500 C",
    "Negative resistance characteristics",
    "Either AC or DC current",
    "Decrease with an increase of the current",
    "70-100 V",
    "50 to 60 V",
    "20-30 V",
    "Dropping Characteristics",
    "No polarity",
    "Current",
    "Tungsten",
    "All of the above",
    "Thermit Welding",
    "Acetylene and oxygen",
    "Resistance welding",
    "Argon arc welding",
    "No: 3",
    "Resistance welding",
    "Arc welding",
    "20,000-40,000 cps",
  ];
}

class AWTQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AWTQuizState();
  }
}

class AWTQuizState extends State<AWTQuiz> {
  @override
  Widget build(BuildContext contextKK) {
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
                        "Question ${questionNumber + 1} of ${unit1.questions.length}",
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
                    unit1.questions[questionNumber],
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
                          if (unit1.choices[questionNumber][0] ==
                              unit1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit1.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit1.choices[questionNumber][1] ==
                              unit1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit1.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit1.choices[questionNumber][2] ==
                              unit1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit1.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (unit1.choices[questionNumber][3] ==
                              unit1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          unit1.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (unit1.choices[questionNumber][0] ==
                              unit1.correctAnswers[questionNumber]) {
                            print(unit1.correctAnswers[questionNumber]);
                          } else if (unit1.choices[questionNumber][1] ==
                              unit1.correctAnswers[questionNumber]) {
                            print(unit1.correctAnswers[questionNumber]);
                          } else if (unit1.choices[questionNumber][2] ==
                              unit1.correctAnswers[questionNumber]) {
                            print(unit1.correctAnswers[questionNumber]);
                          } else if (unit1.choices[questionNumber][3] ==
                              unit1.correctAnswers[questionNumber]) {
                            print(unit1.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(unit1.correctAnswers[questionNumber]),
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
      if (questionNumber == unit1.questions.length - 1) {
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
                      MaterialPageRoute(builder: (context) => AWTQuiz()));
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
