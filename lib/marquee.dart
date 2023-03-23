import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class marq extends StatefulWidget {
  const marq({Key? key}) : super(key: key);

  @override
  State<marq> createState() => _marqState();
}

class _marqState extends State<marq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Marquee(
        text: 'Some sample text that takes some space.',
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.start,
        blankSpace: 20.0,
        velocity: 100.0,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 10.0,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
