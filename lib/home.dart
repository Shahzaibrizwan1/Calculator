import 'package:flutter/material.dart';
import 'package:shahz/components/my_button.dart';

//import 'package:shahz/const.dart';

class HomeScr extends StatefulWidget {
  const HomeScr({super.key});

  @override
  State<HomeScr> createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  var UserInput = '7';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    print('rebuild');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Text(
                        UserInput.toString(),
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(answer.toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white))
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
                        onPress: () {},
                      ),
                      MYButton(
                        title: '+/-',
                        onPress: () {},
                      ),
                      MYButton(title: '%', onPress: () {}),
                      MYButton(
                        onPress: () {},
                        title: '/',
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '7',
                        onPress: () {
                          UserInput = '7';
                          setState(() {});
                        },
                      ),
                      MYButton(
                          title: '8',
                          onPress: () {
                            UserInput = '8';
                            setState(() {});
                          }),
                      MYButton(title: '0', onPress: () {}),
                      MYButton(
                        title: 'X',
                        onPress: () {},
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '4',
                        onPress: () {},
                      ),
                      MYButton(title: '5', onPress: () {}),
                      MYButton(title: '6', onPress: () {}),
                      MYButton(
                        title: '-',
                        onPress: () {},
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '1',
                        onPress: () {},
                      ),
                      MYButton(title: '2', onPress: () {}),
                      MYButton(title: '3', onPress: () {}),
                      MYButton(
                        title: '+',
                        onPress: () {},
                        color: const Color.fromARGB(255, 1, 56, 153),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MYButton(
                        title: '0',
                        onPress: () {},
                      ),
                      MYButton(title: '_', onPress: () {}),
                      MYButton(title: 'DEL', onPress: () {}),
                      MYButton(
                        title: '=',
                        onPress: () {},
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
}
