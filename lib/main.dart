import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playNumberSound(int number) {
    final player = AudioCache();
    player.play('number_$number.wav');
    print('soundNumber: $number');
  }

  Expanded drawButton({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNumberSound(number);
        },
        child: Text(
          "$number",
          style: TextStyle(color: Colors.white, fontSize: 64),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(color: Colors.pink,number: 0),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(color: Colors.red,number: 1),
                    drawButton(color: Colors.green,number: 2),
                    drawButton(color: Colors.blue,number: 3),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(color: Colors.teal,number: 4),
                    drawButton(color: Colors.brown,number: 5),
                    drawButton(color: Colors.yellow,number: 6),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(color: Colors.blue,number: 7),
                    drawButton(color: Colors.red,number: 8),
                    drawButton(color: Colors.black,number: 9),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    drawButton(color: Colors.deepPurple,number: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//       backgroundColor: Colors.pink,
//       appBar: AppBar(
//         title: Text("Dicee"),
//         backgroundColor: Colors.pink,
//       ),
//       body: DicaApp(),
//     ));
//   }
// }

// class DiceApp extends StatelessWidget {
//   var leftImageNumber = 2;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print("left button got pressed");
//               },
//               child: Image.asset('images/dice$leftImageNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: (){
//                 print("right button got pressed");
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class DiceApp extends StatefulWidget {
//   var leftImageNumber = 2;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 print("left button got pressed");
//               },
//               child: Image.asset('images/dice$leftImageNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: (){
//                 print("right button got pressed");
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class DicaApp extends StatefulWidget {
//   @override
//   _DicaAppState createState() => _DicaAppState();
// }

// class _DicaAppState extends State<DicaApp> {
//   var leftImageNumber = 1;
//   var rightImageNumber = 1;
//
//   void changeDicee(){
//     setState(() {
//       rightImageNumber = Random().nextInt(6) + 1; // 0-5
//       leftImageNumber = Random().nextInt(6) + 1; // 0-5
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: [
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//               changeDicee();
//                 print("left button got pressed");
//               },
//               child: Image.asset('images/dice$leftImageNumber.png'),
//             ),
//           ),
//           Expanded(
//             child: FlatButton(
//               onPressed: () {
//                 changeDicee();
//                 print("right button got pressed");
//               },
//               child: Image.asset('images/dice$rightImageNumber.png'),
//             ),
//           ),
//   ],
//       ),
//     );
//   }
// }
