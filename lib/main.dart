import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Xylophone',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
        body: Sticks(),
        backgroundColor: Colors.black,
    ),);
  }
}

class Sticks extends StatefulWidget {

  @override
  State<Sticks> createState() => _SticksState();
}

class _SticksState extends State<Sticks> {
  void playSound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

 Widget buildWidget({required int soundNumber, required Color c}){
    return Expanded(child: TextButton(onPressed: (){playSound(soundNumber);},
      style: TextButton.styleFrom(
        backgroundColor: c,
      ),
        child: Text(''),),);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        buildWidget(soundNumber: 1, c : Colors.red),
        buildWidget(soundNumber: 2, c : Colors.orange),
        buildWidget(soundNumber: 3, c : Colors.yellow),
        buildWidget(soundNumber: 4, c : Colors.green),
        buildWidget(soundNumber: 5, c : Colors.blue),
        buildWidget(soundNumber: 6, c : Colors.indigo),
        buildWidget(soundNumber: 7, c : Colors.deepPurple),
        ],),);
  }
}

