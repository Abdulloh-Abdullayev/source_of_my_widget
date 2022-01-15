import 'package:flutter/material.dart';

class Animation4Page extends StatefulWidget {
  const Animation4Page({Key? key}) : super(key: key);
  static const String id = "animation4_page";

  @override
  _Animation4PageState createState() => _Animation4PageState();
}

class _Animation4PageState extends State<Animation4Page> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(begin: 200.0, end: 120.0).animate(CurvedAnimation(parent: _animationController, curve: const Interval(0.0, 1)))..addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _animationController.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(top: _animation.value, left: _animation.value),
            child: Image.asset("assets/images/side_table.jpg"),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _animationController.forward();
          });
        },
        child: const Icon(Icons.play_circle_fill_outlined),
      ),
    );
  }
}
