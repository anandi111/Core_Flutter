import 'package:flutter/material.dart';
import 'package:kbc_game/correct.dart';
import 'package:kbc_game/logic.dart';
import 'incorrect.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  _Home_pageState createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
                color: questionList[questionIndex]["color"],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: Center(
              child: Text(
                questionList[questionIndex]["question"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    if (questionList[questionIndex]["option"][0]["isAns"] ==
                        true) {
                      if (questionIndex + 1 == questionList.length) {
                        setState(() {
                          questionIndex = 0;
                        });
                      } else {
                        setState(() {
                          questionIndex++;
                          totalscore = totalscore * 2;
                        });
                      }

                      if (questionIndex == 1) {
                        totalscore = 1000;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Correct_page(
                                    index: questionIndex,
                                    score: totalscore,
                                  )));
                    } else {
                      totalscore = 500;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Incorrect_page()));
                      setState(() {
                        questionIndex = 0;
                      });
                    }
                  },
                  child: Button_Container(
                    optText: questionList[questionIndex]["option"][0]["opt"],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    if (questionList[questionIndex]["option"][1]["isAns"] ==
                        true) {
                      if (questionIndex + 1 == questionList.length) {
                        setState(() {
                          questionIndex = 0;
                        });
                      } else {
                        setState(() {
                          questionIndex++;
                          totalscore = totalscore * 2;
                        });
                      }

                      if (questionIndex == 1) {
                        totalscore = 1000;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Correct_page(
                                    index: questionIndex,
                                    score: totalscore,
                                  )));
                    } else {
                      totalscore = 500;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Incorrect_page()));
                      setState(() {
                        questionIndex = 0;
                      });
                    }
                  },
                  child: Button_Container(
                      optText: questionList[questionIndex]["option"][1]["opt"]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    if (questionList[questionIndex]["option"][2]["isAns"] ==
                        true) {
                      if (questionIndex + 1 == questionList.length) {
                        setState(() {
                          questionIndex = 0;
                        });
                      } else {
                        setState(() {
                          questionIndex++;
                          totalscore = totalscore * 2;
                        });
                      }

                      if (questionIndex == 1) {
                        totalscore = 1000;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Correct_page(
                                    index: questionIndex,
                                    score: totalscore,
                                  )));
                    } else {
                      totalscore = 500;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Incorrect_page()));
                      setState(() {
                        questionIndex = 0;
                      });
                    }
                  },
                  child: Button_Container(
                      optText: questionList[questionIndex]["option"][2]["opt"]),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    if (questionList[questionIndex]["option"][3]["isAns"] ==
                        true) {
                      if (questionIndex + 1 == questionList.length) {
                        setState(() {
                          questionIndex = 0;
                        });
                      } else {
                        setState(() {
                          questionIndex++;
                          totalscore = totalscore * 2;
                        });
                      }

                      if (questionIndex == 1) {
                        totalscore = 1000;
                      }

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Correct_page(
                                    index: questionIndex,
                                    score: totalscore,
                                  )));
                    } else {
                      totalscore = 500;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Incorrect_page()));
                      setState(() {
                        questionIndex = 0;
                      });
                    }
                  },
                  child: Button_Container(
                      optText: questionList[questionIndex]["option"][3]["opt"]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Button_Container extends StatefulWidget {
  Button_Container({Key? key, required this.optText}) : super(key: key);
  String optText = "";

  @override
  _Button_ContainerState createState() => _Button_ContainerState();
}

class _Button_ContainerState extends State<Button_Container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 180,
      decoration: BoxDecoration(
        color: Color(0xff363636),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          widget.optText,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

/*if (questionIndex + 1 == questionList.length) {
                      setState(() {
                        questionIndex = 0;

                        totalscore = totalscore * 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Correct_page(
                                      score: totalscore,
                                      index: questionIndex,
                                    )));
                      });
                    } else {
                      if (questionList[questionIndex]["option"][3]["isAns"] ==
                          true) {
                        if (questionIndex == 0) {
                          totalscore = 500;
                        }
                        totalscore = totalscore * 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Correct_page(
                                      score: totalscore,
                                      index: questionIndex,
                                    )));
                        setState(() {
                          questionIndex++;
                        });
                      } else {
                        totalscore = 500;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Incorrect_page()));
                        setState(() {
                          questionIndex = 0;
                        });
                      }
                    }*/
