import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:shahz/components/my_button.dart';

//import 'package:shahz/const.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  var UserInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
           
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                     mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(alignment: Alignment.bottomRight,
                        child: Text(
                          UserInput.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ),SizedBox(height: 15,),
                      Text(answer.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.black))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(children: [
                  Row(
                    children: [
                      MYButton(
                        title: 'AC',
                        onPress: () {
                          UserInput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      MYButton(
                        title: '+/-',
                        onPress: () {
                          UserInput += '+/-';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '%',
                          onPress: () {
                            UserInput += '%';
                            setState(() {});
                          }),
                      MYButton(
                        title: '/',
                        onPress: () {
                          UserInput += '/';
                          setState(() {});
                        },
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '7',
                        onPress: () {
                          UserInput += '7';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '8',
                          onPress: () {
                            UserInput += '8';
                            setState(() {});
                          }),
                      MYButton(
                          title: '0',
                          onPress: () {
                            UserInput += '0';
                            setState(() {});
                          }),
                      MYButton(
                        title: 'x',
                        onPress: () {
                          setState(() {
                            UserInput += 'x';
                          });
                        },
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '4',
                        onPress: () {
                          UserInput += '4';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '5',
                          onPress: () {
                            UserInput += '5';
                            setState(() {});
                          }),
                      MYButton(
                          title: '6',
                          onPress: () {
                            UserInput += '6';
                            setState(() {});
                          }),
                      MYButton(
                        title: '-',
                        onPress: () {
                          UserInput += '-';
                          setState(() {});
                        },
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '1',
                        onPress: () {
                          UserInput += '1';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '2',
                          onPress: () {
                            UserInput += '2';
                            setState(() {});
                          }),
                      MYButton(
                          title: '3',
                          onPress: () {
                            UserInput += '3';
                            setState(() {});
                          }),
                      MYButton(
                        title: '+',
                        onPress: () {
                          UserInput += '+';

                          setState(() {});
                        },
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '0',
                        onPress: () {
                          UserInput += '0';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '.',
                          onPress: () {
                            UserInput += '.';
                            setState(() {});
                          }),
                      MYButton(
                          title: 'DEL',
                          onPress: () {
                            UserInput =
                                UserInput.substring(0, UserInput.length - 1);
                            setState(() {});
                          }),
                      MYButton(
                        title: '=',
                        onPress: () {
                          setState(() {
                            equalPres();
                          });
                        },
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPres() {
  
    String finalUserInput = UserInput;
    finalUserInput = UserInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
