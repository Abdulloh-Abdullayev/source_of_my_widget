import 'package:flutter/material.dart';
import 'package:source_of_my_widget/pages/animation_hinge.dart';

class Animation5Page extends StatefulWidget {
  const Animation5Page({Key? key}) : super(key: key);
  static const String id = "animation_5_page";

  @override
  _Animation5PageState createState() => _Animation5PageState();
}

class _Animation5PageState extends State<Animation5Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hinge Animation"),
      ),
      body: AnimationHinge(
        child: Text("Animation", style: TextStyle(fontSize: 40),)
      ),
    );
  }
}
