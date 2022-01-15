import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SnackBarPage extends StatefulWidget {
  const SnackBarPage({Key? key}) : super(key: key);
  static const String id = "snack_bar_page";

  @override
  _SnackBarPageState createState() => _SnackBarPageState();
}

class _SnackBarPageState extends State<SnackBarPage> {

  _showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Here is snack bar message!!!", style: TextStyle(color: Colors.red, fontSize: 16),),
        duration: Duration(seconds: 3),
        backgroundColor: Colors.yellowAccent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Snack Bar"),
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          child: TextButton(
            onPressed: (){
              _showSnackBar();
            },
            child: const Text("Show me snack bar", style: TextStyle(color: Colors.red),),
          ),
        ),
      ),
    );
  }
}
