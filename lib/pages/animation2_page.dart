import 'package:flutter/material.dart';

class Animation2Page extends StatefulWidget {
  const Animation2Page({Key? key}) : super(key: key);
  static const String id = "animation2_page";

  @override
  _Animation2PageState createState() => _Animation2PageState();
}

class _Animation2PageState extends State<Animation2Page> with SingleTickerProviderStateMixin{
  late AnimationController _controller;
  late Animation<Size> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 1500));
    // _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);
    _animation = Tween<Size>(
      begin: Size(150, 150),
      end: Size(200, 200)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));

    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        _controller.repeat();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AnimationsPage"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, index) {
            return Image(
              image: AssetImage("assets/images/iPhone.jpg"),
              width: _animation.value.width,
              height: _animation.value.height,
            );
          },
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _controller.forward();
        },
        child: const Icon(Icons.play_circle_fill_outlined),
      ),
    );
  }
}
