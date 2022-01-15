import 'package:flutter/material.dart';
import 'package:source_of_my_widget/pages/animation1_page.dart';
import 'package:source_of_my_widget/pages/animation4_page.dart';
import 'package:source_of_my_widget/pages/animation_5_page.dart';
import 'package:source_of_my_widget/pages/demo_animation_page.dart';

import 'animation2_page.dart';

class AnimationHomePage extends StatefulWidget {
  const AnimationHomePage({Key? key}) : super(key: key);
  static const String id = "animation_home_page";

  @override
  _AnimationHomePageState createState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends State<AnimationHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AnimationHomePage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: MaterialButton(
              color: Colors.blue,
              minWidth: 150,
              child: const Text("Animation1"),
              onPressed: (){
                Navigator.pushNamed(context, AnimationsPage.id);
              },
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              minWidth: 150,
              child: const Text("Animation2"),
              onPressed: (){
                Navigator.pushNamed(context, Animation2Page.id);
              },
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              minWidth: 150,
              child: const Text("DemoAnimation"),
              onPressed: (){
                Navigator.pushNamed(context, DemoAnimationPage.id);
              },
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              minWidth: 150,
              child: const Text("Animation4"),
              onPressed: (){
                Navigator.pushNamed(context, Animation4Page.id);
              },
            ),
          ),
          Center(
            child: MaterialButton(
              color: Colors.blue,
              minWidth: 150,
              child: const Text("Animation5"),
              onPressed: (){
                Navigator.pushNamed(context, Animation5Page.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}
