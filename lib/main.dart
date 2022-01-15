import 'package:flutter/material.dart';
import 'package:source_of_my_widget/pages/animation2_page.dart';
import 'package:source_of_my_widget/pages/animation4_page.dart';
import 'package:source_of_my_widget/pages/animation_5_page.dart';
import 'package:source_of_my_widget/pages/animation_home_page.dart';
import 'package:source_of_my_widget/pages/animation1_page.dart';
import 'package:source_of_my_widget/pages/demo_animation_page.dart';
import 'package:source_of_my_widget/pages/dialog_page.dart';
import 'package:source_of_my_widget/pages/fancy_bottom_bar_page.dart';
import 'package:source_of_my_widget/pages/gradient_page.dart';
import 'package:source_of_my_widget/pages/grid_view_page.dart';
import 'package:source_of_my_widget/pages/home_page.dart';
import 'package:source_of_my_widget/pages/life_cycle_page.dart';
import 'package:source_of_my_widget/pages/list_view_builder_page.dart';
import 'package:source_of_my_widget/pages/loading_more_page.dart';
import 'package:source_of_my_widget/pages/navigation_rail_page.dart';
import 'package:source_of_my_widget/pages/single_child_scroll_page.dart';
import 'package:source_of_my_widget/pages/sliver_app_bar_page.dart';
import 'package:source_of_my_widget/pages/snackbar_page.dart';
import 'package:source_of_my_widget/pages/speed_deal_page.dart';
import 'package:source_of_my_widget/pages/tab_bar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        DialogPage.id: (context) => const DialogPage(),
        SingleChildScrollPage.id: (context) => const SingleChildScrollPage(),
        ListViewPage.id: (context) => const ListViewPage(),
        SnackBarPage.id: (context) => const SnackBarPage(),
        TabBarPage.id: (context) => const TabBarPage(),
        GradientPage.id: (context) => const GradientPage(),
        GridViewPage.id: (context) => const GridViewPage(),
        LoadingMorePage.id: (context) => const LoadingMorePage(),
        LifeCyclePage.id: (context) => const LifeCyclePage(),
        SpeedDealPage.id: (context) => const SpeedDealPage(),
        FancyBottomBarPage.id: (context) => const FancyBottomBarPage(),
        SliverAppBarPage.id: (context) => const SliverAppBarPage(),
        NavigationRailPage.id: (context) => const NavigationRailPage(),
        AnimationsPage.id: (context) => const AnimationsPage(),
        AnimationHomePage.id: (context) => const AnimationHomePage(),
        Animation2Page.id: (context) => const Animation2Page(),
        DemoAnimationPage.id: (context) => const DemoAnimationPage(),
        Animation4Page.id: (context) => const Animation4Page(),
        Animation5Page.id: (context) => const Animation5Page(),
      },
    );
  }
}
