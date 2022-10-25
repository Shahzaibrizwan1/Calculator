//import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
//import 'package:shahz/const.dart';
import 'package:shahz/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomeScr(
            // backgroundColor: Colors.white,
            // appBar: AppBar(
            //   backgroundColor: Colors.blue,
            //   title: const Text('iam poor'),
            // ),
            // body: Center(
            //     child: SafeArea(
            //         child: Column(children: [
            //   const Text(
            //     'shazaib',
            //     style: textheading,
            //   ),
            //   const Text(
            //     'shazaib',
            //     style: textheading,
            //   ),
            //   const Text(
            //     'shazaib',
            //     style: textheading,
            //   ),
            //   const Text(
            //     'shazaib',
            //     style: TextStyle(fontSize: 30, color: graycolor),
            //   ),
            //   const Text(
            //     'shazaib',
            //     style: TextStyle(fontSize: 30, color: redColor),
            //   ),
            //   Center(
            //     child: Container(
            //         height: 50,
            //         width: 250,
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: const Center(
            //           child:
            //               Text('shahzaib', style: styleheading),
            //         )),
            //   ),
            //   const SizedBox(
            //     height: 20,
            //   ),
            //   Center(
            //     child: Container(
            //         height: 50,
            //         width: 250,
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: const Center(
            //             child: Text('shahzaib',
            //                 style: TextStyle(color: Colors.white)))),

            //     // ignore: prefer_const_constructors
            //   ),
            //   const SizedBox(
            //     height: 20,
            //   ),
            //   Center(
            //     child: Container(
            //         height: 50,
            //         width: 250,
            //         decoration: BoxDecoration(
            //           color: Colors.blue,
            //           borderRadius: BorderRadius.circular(10),
            //         ),
            //         child: const Center(
            //             child: Text(
            //           'shahzaib',
            //           style: TextStyle(color: Colors.white),
            //         ))),
            //   ),
            //
            //]
            ));
    //),

    //Center(child: Badge())
    //),
    //);
  }
}
