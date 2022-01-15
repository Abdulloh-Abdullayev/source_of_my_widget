import 'package:flutter/material.dart';

class AnimationHinge extends StatefulWidget {
  const AnimationHinge({Key? key, required this.child}) : super(key: key);
  static const String id = "animation_hinge";
  final Widget child;

  @override
  _AnimationHingeState createState() => _AnimationHingeState();
}

class _AnimationHingeState extends State<AnimationHinge>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _rotateAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));

    _rotateAnimation = Tween(begin: 0.0, end: 0.15).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.0, 0.5, curve: Curves.bounceInOut)));

    _slideAnimation = Tween(begin: 100.0, end: 500.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
        parent: _animationController,
        curve: const Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _animationController.forward();
      },
      child: AnimatedBuilder(animation: _slideAnimation, builder: (ctx, ch) {
        return Container(
          width: 220,
          height: 100,
          padding: const EdgeInsets.all(0),
          margin: EdgeInsets.only(left: 75, top: _slideAnimation.value),
          child: RotationTransition(
            turns: _rotateAnimation,
            child: widget.child,
          ),
        );
      }),
    );
  }
}
