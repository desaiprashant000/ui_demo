import 'package:flutter/material.dart';

class dashbord extends StatefulWidget {
  const dashbord({Key? key}) : super(key: key);

  @override
  State<dashbord> createState() => _dashbordState();
}

class _dashbordState extends State<dashbord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      child: Text("hello",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
    );
  }
}
