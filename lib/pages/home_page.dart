import 'package:flutter/material.dart';
import 'package:source_of_my_widget/pages/animation_home_page.dart';
import 'package:source_of_my_widget/pages/dialog_page.dart';
import 'package:source_of_my_widget/pages/fancy_bottom_bar_page.dart';
import 'package:source_of_my_widget/pages/gradient_page.dart';
import 'package:source_of_my_widget/pages/grid_view_page.dart';
import 'package:source_of_my_widget/pages/life_cycle_page.dart';
import 'package:source_of_my_widget/pages/list_view_builder_page.dart';
import 'package:source_of_my_widget/pages/loading_more_page.dart';
import 'package:source_of_my_widget/pages/navigation_rail_page.dart';
import 'package:source_of_my_widget/pages/single_child_scroll_page.dart';
import 'package:source_of_my_widget/pages/sliver_app_bar_page.dart';
import 'package:source_of_my_widget/pages/snackbar_page.dart';
import 'package:source_of_my_widget/pages/speed_deal_page.dart';
import 'package:source_of_my_widget/pages/tab_bar_page.dart';

import 'animation1_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Dialog
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DialogPage()));
                },
                child: const Text("Dialog", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 150,
              ),
            ),

            //SnackBar
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SnackBarPage()));
                },
                child: const Text("SnackBar", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            //SingleChildScrollView
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, SingleChildScrollPage.id);
                },
                child: const Text("SingleChildScroll", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            //ListViewBuilder
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, ListViewPage.id);
                },
                child: const Text("ListViewBuilder", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            //GridView
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, GridViewPage.id);
                },
                child: const Text("GridView", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // TabBarPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, TabBarPage.id);
                },
                child: const Text("TabBar", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // Gradient
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, GradientPage.id);
                },
                child: const Text("Gradient", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // LoadingMorePage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, LoadingMorePage.id);
                },
                child: const Text("LoadingMorePage", style: TextStyle(color: Colors.red, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            //LifeCyclePage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, LifeCyclePage.id);
                },
                child: const Text("LifeCyclePage", style: TextStyle(color: Colors.red, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // SpeedDealPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, SpeedDealPage.id);
                },
                child: const Text("SpeedDeal", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // FancyBottomBarPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, FancyBottomBarPage.id);
                },
                child: const Text("FancyBottomBar", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // SliverAppBarPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, SliverAppBarPage.id);
                },
                child: const Text("SliverAppBarPage", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // NavigationRailPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, NavigationRailPage.id);
                },
                child: const Text("NavigationRailPage", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),

            // AnimationsPage
            Container(
              padding: const EdgeInsets.only(left: 80, right: 80),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, AnimationHomePage.id);
                },
                child: const Text("AnimationsPage", style: TextStyle(color: Colors.white, fontSize: 18),),
                color: Colors.blue,
                shape: const StadiumBorder(),
                minWidth: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
