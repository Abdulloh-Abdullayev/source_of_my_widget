import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);
  static const String id = "list_view_page";

  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  ScrollController _controller = ScrollController();
  int _currentMax = 10;
  int number = 10;
  int count = 0;

  final List names = [
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali",
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali",
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali",
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali",
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali",
    "Sultonov Shaxobiddin",
    "Meyliyev Javohir",
    "Nabiyev Nuriiymon",
    "Sultonov Asror",
    "Hatamova Inobat",
    "Rajabov Nurali"
  ];
  List numbers = [
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071",
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071",
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071",
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071",
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071",
    "+998 97 9500224",
    "+998 99 9592634",
    "+998 99 0002857",
    "+998 97 5880832",
    "+998 97 3846260",
    "+998 97 3856071"
  ];

  List names2 = ["Sultonov Shaxobiddin", "Meyliyev Javohir", "Nabiyev Nuriiymon", "Sultonov Asror", "Hatamova Inobat", "Rajabov Nurali", "Sultonov Shaxobiddin", "Meyliyev Javohir", "Nabiyev Nuriiymon", "Sultonov Asror",];
  List numbers2 = ["+998 97 9500224", "+998 99 9592634", "+998 99 0002857", "+998 97 5880832", "+998 97 3846260", "+998 97 3856071", "+998 97 9500224", "+998 99 9592634", "+998 99 0002857", "+998 97 5880832",];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.addListener(() {
      if(_controller.position.pixels == _controller.position.maxScrollExtent) {
        setState(() {
          _getMoreData();
        });
      }
    });
  }

  _getMoreData() {
    while(number<numbers.length) {
      for(int i=_currentMax; i<number; i++) {
        setState(() {
          names2.add(names[i]);
          numbers2.add(numbers[i]);
        });
      }
      setState(() {
        number+=10;
      });
      print("length is $number");
      print("list length is ${numbers.length}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Contact Page"),
      ),
      body: ListView.builder(
          controller: _controller,
          itemCount: names2.length,
          itemBuilder: (context, count) {
            return _listOfContact(count);
          }),
    );
  }

  Widget _listOfContact(int index) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ListTile(
          leading: Container(
              alignment: Alignment.centerLeft,
              width: 30,
              padding: const EdgeInsets.only(left: 10),
              child: const Icon(
                Icons.contacts,
                color: Colors.amber,
              )),
          selected: true,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)),
          selectedTileColor: Colors.white,
          title: Text(
            names2[index],
            style: const TextStyle(
                color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(numbers2[index]),
          trailing:  IconButton(
            icon: const Icon(
              Icons.call,
              color: Colors.greenAccent,
            ),
            onPressed: (){
              launch('tel://${numbers2[index]}');
            },
          )
      ),
    );
  }
}
