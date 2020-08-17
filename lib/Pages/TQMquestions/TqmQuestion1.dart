import 'package:finalpractice/Widgets/AWT.dart';
import 'package:flutter/material.dart';
import '../../Widgets/TQM.dart';

var finalScore = 0;
var questionNumber = 0;
var set1 = new RERUnit1();

class RERUnit1 {
  var questions = [
    "1.  What is the aim of fool proof technique used for total quality management?",
    "2.  Match the following group 1 items with group 2 items \n1. Sort --------------------------------- A. Seitan  \n2. Set in order --------------------- B.Seiketsu \n3. Shine --------------------------------- C. Seiri  \n4. Standardize ---------------------------- D. Seiso ",
    "3.  What is meant by Kaizen?",
    "4.  Which among the following is a pull type signaling system?",
    "5.  ISO 14000 quality standard is related with",
    "6.  Which ISO standard is used in international automobile companies to set automotive quality system standards ?",
    "7.  What is quality assurance?",
    "8.  Which of the following statements is/are false?",
    "9.  Which quality management program is related to the maintenance of plants and equipments?",
    "10. The aim of Just-In-Time manufacturing principle is to eliminate",
    "11.   What is meant by P, D, S and A in PDSA cycle?",
    "12.   Quality improvement planning is related to which category of cost?",
    "13.   Which of the following strategies of Deming's fourteen points is included into category of Management commitment?  ",
    "14. The concepts of quality planning, quality control, quality improvement known as ‘Trilogy of quality’ was introduced by ………………….",
    "15.  Match the following group 1 (charts) with group 2 (use) and select the correct option.",
    "16.   According Juran's Triology, which of the following actions is performed under planning procedure?",
    "17.   Match the following group 1 items with group 2 items \n1. Sort ----------------A. Seitan \n2. Set in order -------------B. Seiketsu \n3. Shine ---------------------- C. Seiri \n4. Standardize ------------------- D. Seiso",
    "18.   Fish bone diagram is also known as?",
    "19.   Who among the following suggested seven quality tools for controlling quality?",
    "20.   Match the following group 1 items (Authors) with group 2 items (Definitions) \n1. Juran -> A. Quality is conformance to requirements \n2. Crossby -> B. Quality in essence is a way of managing the organization \n3. Hoshin -> C. Quality is fitness for use \n4. Feigenbaum -> D. Quality is correcting and preventing loss,not living with loss",
  ];

  var choices = [
    [
      "to achieve zero defects",
      "to specify time schedules",
      "to specify targets",
      "none of the above"
    ],
    [
      "1 – D. 2 – A, 3 – B, 4 – C",
      "1 – C, 2 – A, 3 – D, 4 – B",
      "1 – B, 2 – C, 3 – A, 4 – D",
      "1 –A, 2 – C, 3 – D, 4 – B"
    ],
    [
      "card signal",
      "to avoid inadvertent errors",
      "change for better quality",
      "none of the above"
    ],
    ["Just in time", "Kanban", "both a. and b.", "none of the above"],
    [
      "Environmental management systems",
      "Automotive quality standards",
      "Eliminating poor quality",
      "Customer satisfaction"
    ],
    ["ISO 14000", "TS 16949", "ISO 9000", "none of the above"],
    [
      "Quality assurance deals with activities which prove that products and service",
      "Quality assurance deals with customers satisfaction",
      "Quality assurance deals with controlling the quality of products",
      "All of the above"
    ],
    [
      "Fault tree analysis method is used to determine reliability of product",
      "The goal of Six Sigma is to reduce number of defects to 2.4 parts per billion",
      "Six sigma is represented by normal distribution curve",
      "Poka yoke is a policy which prevents occurrence of human errors"
    ],
    [
      "Environmental management systems",
      "Fault tree analysis",
      "Failure mode effect analysis",
      "Total productive maintenance"
    ],
    [
      "time wastage",
      "labour wastage",
      "cost of excessive inventory",
      "all of the above"
    ],
    [
      "Progress Development Study Act",
      "Plan Do Study Act",
      "Project Development Study Act",
      "Prevention Do Study Ac"
    ],
    [
      "Cost of failure",
      "Cost of appraisal",
      "Cost of prevention",
      "All of the above"
    ],
    [
      "Institute leadership",
      "Encouraging education",
      "Eliminating exhortations",
      "Adopting new philosophy"
    ],
    ["Philip B. Crosby", "Edward Deming", "A. Shewhart", "Dr. Juran"],
    [
      "R chart -> A. study the number of defects per unit",
      "C chart -> C. dispersion of measured data",
      "X chart -> D. defective units produced per subgroup",
      "P chart -> C. dispersion of measured data"
    ],
    [
      "choosing control subjects",
      "organizing project teams",
      "project establishment",
      "deal with resistance to change"
    ],
    [
      "1 – A, 2 – D, 3 – B, 4 – C",
      "1 – C, 2 – A, 3 – D, 4 - B",
      "1 – B, 2 – A, 3 – C, 4 - D",
      "1 – D, 2 – A, 3 – B, 4 - C"
    ],
    [
      "Cause and effect chart",
      "Ishikawa diagram",
      "Both a. and b.",
      "None of the above"
    ],
    ["Juran", "Kaoru Ishikawa", "Dr. W. Edward Deming", "Feigenbaum"],
    [
      "1 – A, 2 – D, 3 – B, 4 – C",
      "1 – C, 2 – A, 3 – D, 4 - B",
      "1 – B, 2 – A, 3 – C, 4 - D",
      "1 – D, 2 – A, 3 – B, 4 - C"
    ],
  ];

  var correctAnswers = [
    "to achieve zero defects",
    "1 – C, 2 – A, 3 – D, 4 – B",
    "change for better quality",
    "both a. and b.",
    "Environmental management systems",
    "TS 16949",
    "Quality assurance deals with activities which prove that products and service",
    "Poka yoke is a policy which prevents occurrence of human errors",
    "Total productive maintenance",
    "all of the above",
    "Plan Do Study Act",
    "Cost of prevention",
    "Adopting new philosophy",
    "Dr. Juran",
    "X chart -> D. defective units produced per subgroup",
    "project establishment",
    "1 – C, 2 – A, 3 – D, 4 - B",
    "Both a. and b.",
    "Kaoru Ishikawa",
    "1 – C, 2 – A, 3 – D, 4 - B",
  ];
}

class Set1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new Set1State();
  }
}

class Set1State extends State<Set1> {
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
                        "Question ${questionNumber + 1} of ${set1.questions.length}",
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
                    set1.questions[questionNumber],
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
                          if (set1.choices[questionNumber][0] ==
                              set1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set1.choices[questionNumber][0],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 2
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set1.choices[questionNumber][1] ==
                              set1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set1.choices[questionNumber][1],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set1.choices[questionNumber][2] ==
                              set1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set1.choices[questionNumber][2],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),

                      //button 4
                      new FlatButton(
                        color: Colors.blueGrey,
                        onPressed: () {
                          if (set1.choices[questionNumber][3] ==
                              set1.correctAnswers[questionNumber]) {
                            debugPrint("Correct");
                            finalScore++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuestion();
                        },
                        child: new Text(
                          set1.choices[questionNumber][3],
                          style: new TextStyle(
                              fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                      new FlatButton(
                        color: Colors.yellow,
                        onPressed: () {
                          if (set1.choices[questionNumber][0] ==
                              set1.correctAnswers[questionNumber]) {
                            print(set1.correctAnswers[questionNumber]);
                          } else if (set1.choices[questionNumber][1] ==
                              set1.correctAnswers[questionNumber]) {
                            print(set1.correctAnswers[questionNumber]);
                          } else if (set1.choices[questionNumber][2] ==
                              set1.correctAnswers[questionNumber]) {
                            print(set1.correctAnswers[questionNumber]);
                          } else if (set1.choices[questionNumber][3] ==
                              set1.correctAnswers[questionNumber]) {
                            print(set1.correctAnswers[questionNumber]);
                          } else {
                            print('null');
                          }
                          return showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              content:
                                  Text(set1.correctAnswers[questionNumber]),
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
      if (questionNumber == set1.questions.length - 1) {
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
                      context, MaterialPageRoute(builder: (context) => Set1()));
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
