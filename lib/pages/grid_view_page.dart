import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);
  static const String id = "grid_view_page";

  @override
  _GridViewPageState createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {

  List images = [
    "assets/images/image.jpg",
    "assets/images/image_background.jpg",
    "assets/images/iPhone.jpg",
    "assets/images/side_table.jpg",
    "assets/images/vase.jpg",
    "assets/images/white_chair.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViewPage"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: images.length,
          padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 7/10,
          ),
          itemBuilder: (context, index) {
            return _itemOfGridView(index, "image ${index+1}");
          }
      ),
    );
  }

  Widget _itemOfGridView(int index, String name) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            child: Image(
              image: AssetImage(images[index]),
              fit: BoxFit.cover,
              height: 120,
              width: 150,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(name),
        ],
      ),

    );
  }

}
