import 'package:flutter/material.dart';
import '../../Widgets/TQM.dart';

var finalScore = 0;
var questionNumber = 0;
var set3 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1. Which of the following is for Environment management?",
    "2. What is ISO?",
    "3. EMS stands for",
    "4. Match The Following \nA. Bureaucratic 1.Satisfy all customer need \nB. Leadership from top 2.Working together for excellence \nC. Excellence mean 3.Provide consistent vision direction \nD. Team work mean 4.Unlimited thinking",
    "5. Match the following \nA. Dr. Deming believes 1. Common causes \nB. Ishikawa development 2. To prevent defect \nC. Type of variation is due to 3. Cause & effect diagram \nD. Crosby’s objective of quality 4. Histogram",
    "6. Rectangle represents ________ While plotting flow chart.",
    "7. Tally chart is",
    "8. Diamond represents ________ while plotting flow chart.",
    "9. The role of management is to",
    "10. ISO emphasis on",
    "11. ISO – 14001 gives stress on",
    "12. Service Assurance is",
    "13. When cpk is less than one",
    "14. Control chart is \ni. Process monitoring tool\nii. Process control tool \niii. Process planning tool",
    "15. The main business process objective(s) are \ni. Customer service \nii. Profit & loss \niii. Employee satisfaction",
    "16. Common elements of winners are \ni. Senior management was actively involved \nii. Control of overall process \niii. Focus on customer",
    "17. TQM focuses on \ni. Supplier \nii. Employee \niii. Customer",
    "18. The customer requirement to be reviewed \ni. Before supply of product \nii. After supply of product \niii. Before commitment of supply of product",
    "19. Current quality concept is \ni. Increase in production \nii. Continual improvement \niii. Prevention of defect",
    "20. Continual improvement is in \ni. Environmental objective \nii. Audit Result \niii. Corrective action",
  ];

  var choices = [
    ["ISO-9000", "ISO-14000", "ISO-26000", "ISO-31000"],
    [
      "Indian organization for standard",
      "Internal organization for standard",
      "International organization for standard",
      "None of the above"
    ],
    [
      "Environmental management system",
      "Employees management system",
      "Engineering management system",
      "Equipment management system"
    ],
    [
      "A-2, B-1, C-3, D-4",
      "A-2, B-3, C-1, D-4",
      "A-2, B-3, C-4, D-1",
      "A-4, B-3, C-1, D-2"
    ],
    [
      "A-3, B-2, C-1, D-4",
      "A-2, B-3, C-4, D-1",
      "A-2, B-3, C-1, D-4",
      "A-4, B-3, C-1, D-2"
    ],
    [
      "Step in activity",
      "Decision making",
      "Direction of flow",
      "None of the above"
    ],
    [
      "Process monitoring too",
      "Data collection tool",
      "Process planning tool",
      "None of the above"
    ],
    [
      "Step in activity",
      "Decision making",
      "Direction of flow",
      "None of the above"
    ],
    [
      "provide Resources",
      "define EMS",
      "monitor the effectiveness of the system",
      "All of the above"
    ],
    ["Prevention", "Inspection", "Rejection", "All of the above"],
    [
      "Plan – Do -check -Act",
      "Environmental protection",
      "Prevention rather than detection",
      "All of the above"
    ],
    [
      "Confidence with customer",
      "Customer has trust",
      "Employee has knowledge",
      "All of the above"
    ],
    [
      "Process is not capable",
      "Process is stable",
      "Process if highly capable",
      "None of the above"
    ],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
    ["i only", "i & ii", "i, ii & iii", "None of the above"],
  ];

  var correctAnswers = [
    "ISO-14000",
    "International organization for standard",
    "Environmental management system",
    "A-2, B-3, C-1, D-4",
    "A-2, B-3, C-1, D-4",
    "Step in activity",
    "Data collection tool",
    "Decision making",
    "All of the above",
    "Prevention",
    "All of the above",
    "All of the above",
    "Process is not capable",
    "i & ii",
    "i & ii",
    "i, ii & iii",
    "i & ii",
    "i & ii",
    "i, ii & iii",
    "i, ii & iii",
  ];
}

class Set3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Set3State();
  }
}

class Set3State extends State<Set3> {
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Set3()));
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
