// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Quiz App',
//         theme: ThemeData(
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//           useMaterial3: true,
//         ),
//         home: const MyHomePage());
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<String> list = [
//     "Question 1",
//     "Question 2",
//     "Question 3",
//     "Question 4",
//     "Question 5",
//     "Question 6",
//     "Question 7",
//     "Question 8"
//   ];
//   List option = [1, 2, 3, 4, 1, 2, 3, 4];
//   int i = 0;
//   String str = "";
//   int counter = 0;
//   int count = 8;
//   int _count1 = 0;
//   int _count2 = 0;
//   int _count3 = 0;
//   int _count4 = 0;
//   void counterIncre() {
//     _count1 = 0;
//     _count2 = 0;
//     _count3 = 0;
//     _count4 = 0;
//     str = list[i];
//     setState(() {
//       ++i;
//       ++counter;
//     });
//   }

//   void counterDecr() {
//     if (counter == 0) {
//       counter = 1;
//     }
//     if (i == 0) {
//       i = 1;
//     }

//     setState(() {
//       i--;
//       counter--;
//     });
//     str = list[i];
//   }

//   Color? blinkColor1() {
//     if (_count1 == 0) {
//       return Colors.white;
//     } else if (_count1 == 1) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }

//   Color? blinkColor2() {
//     if (_count2 == 0) {
//       return Colors.white;
//     } else if (_count2 == 2) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }

//   Color? blinkColor3() {
//     if (_count3 == 0) {
//       return Colors.white;
//     } else if (_count3 == 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }

//   Color? blinkColor4() {
//     if (_count4 == 0) {
//       return Colors.white;
//     } else if (_count4 == 4) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: Colors.amber,
//           title: Title(color: Colors.blue, child: Text("Quiz App"))),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text("Question " + "$counter" + "/" + "$count"),
//             SizedBox(height: 10),
//             Text("Question No." + "$counter" + ":" + "$str"),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   if (option[i] == 1) {
//                     _count1 = 1;
//                   } else {
//                     _count1 = -1;
//                   }
//                 });
//               },
//               child: Text("option 1"),
//               style: ButtonStyle(
//                   backgroundColor: MaterialStatePropertyAll(blinkColor1())),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   if (option[i] == 2) {
//                     _count2 = 2;
//                   } else {
//                     _count2 = -1;
//                   }
//                 });
//               },
//               child: Text("option 2"),
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(blinkColor2())),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   if (option[i] == 3) {
//                     _count3 = 3;
//                   } else {
//                     _count3 = -1;
//                   }
//                 });
//               },
//               child: Text("option 3"),
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(blinkColor3())),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   if (option[i] == 4) {
//                     _count4 = 4;
//                   } else {
//                     _count4 = -1;
//                   }
//                 });
//               },
//               child: Text("option 4"),
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all(blinkColor4())),
//             ),
//             Stack(
//               children: <Widget>[
//                 Align(
//                     alignment: Alignment.bottomLeft,
//                     child: FloatingActionButton(
//                       onPressed: counterDecr,
//                       tooltip: 'Prev Question',
//                       child: const Text("Prev"),
//                     )),
//                 Align(
//                     alignment: Alignment.bottomRight,
//                     child: FloatingActionButton(
//                       onPressed: counterIncre,
//                       tooltip: 'Next Question',
//                       child: const Text("next"),
//                     )),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }