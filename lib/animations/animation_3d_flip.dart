import 'package:flutter/material.dart';

class Flip3D extends StatefulWidget {
  const Flip3D({Key? key, required this.child}) : super(key: key);
  static const String id = "animation_3d_flip";
  final  Widget child;

  @override
  _Flip3DState createState() => _Flip3DState();
}

class _Flip3DState extends State<Flip3D> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addStatusListener((status) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        _animationController.forward();
      },
      child: Transform(
        alignment: FractionalOffset.center,
        transform: Matrix4.identity()..setEntry(3, 2, 0.002)..rotateX(3.14 * _animation.value),
      ),
    );
  }
}
