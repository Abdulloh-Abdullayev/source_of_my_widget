import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);
  static const String id = 'sliver_app_bar_page';

  @override
  _SliverAppBarPageState createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            floating: false,
            snap: false,
            elevation: 50,
            backgroundColor: Colors.blueGrey.shade700,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text("iPhone"),
              centerTitle: true,
              background: Image(
                image: AssetImage("assets/images/iPhone.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate (
              (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: ListTile(
                    title: Text("iPhone ${index+1}"),
                    subtitle: Text("Cost \$${(index +1)*100}"),
                    trailing: const Icon(Icons.call),
                  ),
                );
              }
          ),
          ),
        ],
      ),
    );
  }
}
