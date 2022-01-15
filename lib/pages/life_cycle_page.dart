import 'dart:async';

import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({Key? key}) : super(key: key);
  static const String id = "life_cycle_page";

  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> with WidgetsBindingObserver{
  late Timer time;
  int count = 0;
  bool isActive = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    time  = Timer.periodic(const Duration(seconds: 1), (timer) {
      if(isActive) {
        setState(() {
          count++;
        });
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    time.cancel();
    WidgetsBinding.instance!.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if(state == AppLifecycleState.resumed){
      isActive = true;
      print('Resumed');
    }else if(state == AppLifecycleState.inactive){
      isActive = false;
      print('Inactive');
    }else if(state == AppLifecycleState.detached){
      print('Detached');
    }else if(state == AppLifecycleState.paused){
      isActive = false;
      print('Paused');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("LifeCyclePage"),
      ),
      body: Center(
        child: Text("$count", style: const TextStyle(fontSize: 60, color: Colors.black),),
      ),
    );
  }
}
