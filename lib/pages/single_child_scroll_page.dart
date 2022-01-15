import 'package:flutter/material.dart';

class SingleChildScrollPage extends StatefulWidget {
  const SingleChildScrollPage({Key? key}) : super(key: key);
  static const String id = "single_child_scroll_page";

  @override
  _SingleChildScrollPageState createState() => _SingleChildScrollPageState();
}

class _SingleChildScrollPageState extends State<SingleChildScrollPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // scrollDirection: Axis.horizontal,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _axisHorizontal(),
              _axisVertical(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _axisHorizontal() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: 300,
            height: 400,
            color: Colors.greenAccent,
          ),
          Container(
            width: 300,
            height: 400,
            color: Colors.yellowAccent,
          ),
          Container(
            width: 300,
            height: 400,
            color: Colors.lightBlueAccent,
          ),
          Container(
            width: 300,
            height: 400,
            color: Colors.redAccent,
          ),
          Container(
            width: 300,
            height: 400,
            color: Colors.deepPurpleAccent,
          ),
        ],
      ),
    );
  }

  Widget _axisVertical() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.blueAccent,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurpleAccent,
          ),
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.yellowAccent,
          ),
        ],
      ),
    );
  }
}
