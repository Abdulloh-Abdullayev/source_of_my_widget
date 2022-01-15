import 'package:flutter/material.dart';

class DemoAnimationPage extends StatefulWidget {
  const DemoAnimationPage({Key? key}) : super(key: key);
  static const String id = "demo_animation_page";

  @override
  _DemoAnimationPageState createState() => _DemoAnimationPageState();
}

class _DemoAnimationPageState extends State<DemoAnimationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DemoAnimation"),
      ),
    );
  }
}
