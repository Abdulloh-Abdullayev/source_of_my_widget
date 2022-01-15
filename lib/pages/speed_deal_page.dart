import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class SpeedDealPage extends StatefulWidget {
  const SpeedDealPage({Key? key}) : super(key: key);
  static const String id = "speed_deal_page";

  @override
  _SpeedDealPageState createState() => _SpeedDealPageState();
}

class _SpeedDealPageState extends State<SpeedDealPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("SpeedDeal"),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: const IconThemeData(size: 22),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.green,
        elevation: 20,
        spaceBetweenChildren: 5,
        onOpen: (){
          print("Speed Dial open");
        },
        onClose: (){
          print("Speed Dial close");
        },
        children: [
          SpeedDialChild(
            child: const Icon(Icons.share_outlined),
            label: "Share",
            labelStyle: const TextStyle(fontSize: 17)
          ),
          SpeedDialChild(
            child: const Icon(Icons.keyboard_voice_outlined),
            label: "Voice",
            labelStyle: const TextStyle(fontSize: 17),
          ),
          SpeedDialChild(
            child: const Icon(Icons.edit),
            label: "Edit",
            labelStyle: const TextStyle(fontSize: 17),
          ),
          SpeedDialChild(
            child: const Icon(Icons.update_outlined),
            label: "Update",
            labelStyle: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
