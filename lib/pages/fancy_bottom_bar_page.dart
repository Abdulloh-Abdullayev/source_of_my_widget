import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class FancyBottomBarPage extends StatefulWidget {
  const FancyBottomBarPage({Key? key}) : super(key: key);
  static const String id = "fancy_bottom_bar_page";

  @override
  _FancyBottomBarPageState createState() => _FancyBottomBarPageState();
}

class _FancyBottomBarPageState extends State<FancyBottomBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FancyBottomBar"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("FancyBottomBar"),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Colors.yellow,
        textColor: Colors.black,
        barBackgroundColor: Colors.blue,
        inactiveIconColor: Colors.yellowAccent,
        activeIconColor: Colors.red,
        tabs: [
          TabData(iconData: Icons.home_outlined, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.contacts, title: "Contact"),
        ],
        onTabChangedListener: (position) {
          print(position);
        },
      ),
    );
  }
}
