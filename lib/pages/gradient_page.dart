import 'package:flutter/material.dart';

class GradientPage extends StatefulWidget {
  const GradientPage({Key? key}) : super(key: key);
  static const String id = "gradient_page";

  @override
  _GradientPageState createState() => _GradientPageState();
}

class _GradientPageState extends State<GradientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradient page"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 200,
          decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/vase.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(color: Color(0xfff7bf600), blurRadius: 10, spreadRadius: 3, offset: Offset(10, 10)),
              ]
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    colors: [
                      Colors.yellowAccent.withOpacity(0.5),
                      Colors.green.withOpacity(0.3),
                      Colors.white.withOpacity(0.2),
                      Colors.lightBlueAccent.withOpacity(0.1),
                    ]
                )
            ),
          ),
        ),
      ),
    );
  }
}
