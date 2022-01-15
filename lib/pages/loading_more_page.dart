import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingMorePage extends StatefulWidget {
  const LoadingMorePage({Key? key}) : super(key: key);
  static const String id = "loading_more_page";

  @override
  _LoadingMorePageState createState() => _LoadingMorePageState();
}

class _LoadingMorePageState extends State<LoadingMorePage> {
  List _itemList = [];
  int _currentMax = 15;
  ScrollController _scrollController = ScrollController();

  _getMoreDat() {
    for (int i = _currentMax; i < _currentMax + 15; i++) {
      _itemList.add("Item: ${i + 1}");
    }
    setState(() {
      _currentMax += 15;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemList = List.generate(_currentMax, (index) => "Item: ${index + 1}");
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _getMoreDat();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Loading more page"),
      ),
      body: ListView.builder(
          controller: _scrollController,
          itemCount: _itemList.length,
          itemExtent: 70,
          itemBuilder: (context, index) {
            if (index == _itemList.length) {
              return const CupertinoActivityIndicator();
            }
            return ListTile(
              title: Text(_itemList[index]),
            );
          }),
    );
  }
}
