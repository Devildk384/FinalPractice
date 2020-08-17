import 'package:flutter/material.dart';
import '../../Widgets/TQM.dart';

var finalScore = 0;
var questionNumber = 0;
var set2 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1. What is the full form of TQM?",
    "2. Which of the following is correct for TQM?",
    "3. Which part in quality management is the critical part?",
    "4. Which of the following is correct option for given statements about TQM? \nStatement 1: Design of the formal system is a one time effort. \nStatement 2: TQM is a management philosophy.",
    "5. What are the core principles of the TQM in a company-wide effort?",
    "6. What is included in the quality assessment in TQM?",
    "7. How many stages are needed for inspection and testing in TQM as per ISO 9001?",
    "8. Which factor is the basis of Decision making in TQM?",
    "9. Match the following: \na) Quality is everyone's responsibility.1) J.M. Juran \nb) Quality means conformance to requirements 2) ISO 9000 \nc) Quality is fitness for use.3) Edwards Deming \nd) Quality is the degree to which a set of inherent characteristics fulfills requirements.4) Philip B. Crosby",
    "10. Malcolm Baldrige national quality award is for (MBNQA)",
    "11.The process mapping is a ______ diagram.",
    "12. Control chart is a",
    "13. The objective of ISO-9000 family of Quality management is",
    "14. Total Quality Management (TQM) focuses on",
    "15. Which of the following is responsible for quality objective?",
    "16. TQM & ISO both focuses on",
    "17. According to Deming, Quality problems are",
    "18. While setting Quality objective, ________ to be considered.",
    "19. Match The Following \nA. TQM promotes 1. Small change \nB. Kaizen is 2. Continuous improvement \nC. Quality circle can solve problem related to 3. Employee participation \nD. Quality circle benefit to 4. Employee",
    "20. _______ helps organization reduce employee turnover and absenteeism.",
  ];

  var choices = [
    [
      "True quality machining",
      "Total quality management",
      "True quantitative machining",
      "Total queue management"
    ],
    [
      "Quality strategy in TQM emanates from top",
      "TQM is a static process",
      "It is a management approach to short-term success through customer",
      "It is used to improve processes not products"
    ],
    [
      "Process thinking",
      "Performance measurement",
      "Customer’s view",
      "Systematic approach"
    ],
    ["F, F", "F, T", "T, T", "T, F"],
    [
      "Customer and process orientation only",
      "Continuous improvement only",
      "Process orientation and continuous improvement only",
      "Continuous improvement, process and customer orientation"
    ],
    [
      "Strategic quality planning",
      "Management of process quality",
      "Quality and operational results",
      "Information and analysis"
    ],
    ["1", "2", "3", "4"],
    [
      "Facts only",
      "Opinions only",
      "Facts and opinions both",
      "Neither facts nor opinions"
    ],
    [
      "a-3, b-4, c-2, d-1",
      "a-2, b-4, c-1, d-3",
      "a-2, b-4, c-3, d-1",
      "a-3, b-4, c-1, d-2"
    ],
    [
      "Total Quality Management",
      "International Standard Organization",
      "Total Productive Maintenance",
      "Total Quality Control"
    ],
    ["Data flow", "Work flow", "Circular", "Audit"],
    [
      "Process monitoring tool",
      "Process control tool",
      "Both (a) and (b)",
      "None of the above"
    ],
    [
      "Customer satisfaction",
      "Employee satisfaction",
      "Skill enhancement",
      "Environmental issues"
    ],
    ["Employee", "Customer", "Both (a) and (b)", "None of the above"],
    [
      "Top level management",
      "Middle level management",
      "Frontline management",
      "All of the above"
    ],
    ["Customer", "Employee", "Supplier", "All of the above"],
    ["Due to management", "Due to method", "Due to machine", "Due to material"],
    ["Material quality", "Customer need", "Market demand", "All of the above"],
    [
      "A-3, B-1, C-2, D-4",
      "A-1, B-3, C-2, D-4",
      "A-3, B-1, C-4, D-2",
      "A-3, B-2, C-1, D-4"
    ],
    [
      "Job design",
      "Training & development",
      "Wage revision",
      "All of the above"
    ],
  ];

  var correctAnswers = [
    "Total quality management",
    "Quality strategy in TQM emanates from top",
    "Systematic approach",
    "F, T",
    "Continuous improvement, process and customer orientation",
    "Management of process quality",
    "3",
    "Facts only",
    "a-3, b-4, c-1, d-2",
    "Total Quality Management",
    "Work flow",
    "Both (a) and (b)",
    "Customer satisfaction",
    "Both (a) and (b)",
    "Top level management",
    "Customer",
    "Due to management",
    "Customer need",
    "A-3, B-1, C-2, D-4",
    "Training & development",
  ];
}

class Set2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Set2State();
  }
}

class Set2State extends State<Set2> {
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
                  '/third', (Route<dynamic> route) => false);
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Set2()));
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
