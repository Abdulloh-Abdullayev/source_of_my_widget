import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({Key? key}) : super(key: key);
  static const String id = "navigation_rail_page";

  @override
  _NavigationRailPageState createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.blueGrey.shade700,
              destinations: const [
                NavigationRailDestination(
                    icon: RotatedBox(
                      quarterTurns: 3,
                      child: Text("Home"),
                    ),
                    selectedIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Text("Home"),
                    ),
                    label: SizedBox.shrink(),
                ),
                NavigationRailDestination(
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text("About"),
                  ),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text("About"),
                  ),
                  label: SizedBox.shrink(),
                ),
                NavigationRailDestination(
                  icon: RotatedBox(
                    quarterTurns: 3,
                    child: Text("Description"),
                  ),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text("Description"),
                  ),
                  label: SizedBox.shrink(),
                ),
                NavigationRailDestination(
                  icon: RotatedBox(
                    quarterTurns: 3,

                    child: Text("Trailing"),
                  ),
                  selectedIcon: RotatedBox(
                    quarterTurns: 3,
                    child: Text("Trailing"),
                  ),
                  label: SizedBox.shrink(),
                ),
              ],
              selectedIndex: selectedIndex
          ),
          Expanded(
              child: Container(
                child: Center(
                  child: Text("Navigation Rail"),
                ),
              )
          ),
        ],
      ),
    );
  }
}
