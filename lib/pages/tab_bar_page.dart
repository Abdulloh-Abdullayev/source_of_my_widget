import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({Key? key}) : super(key: key);
  static const String id = "tab_bar_page";

  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {

  int count = 1;
  bool isTurnOn = false;

  List namesWifi = [
    "Alibaba",
    "PDP_5G",
    "Microsoft",
    "iPhone",
    "SpaceX",
    "Telegram",
    "TP-Link_5G"
  ];


  final List names = [
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
    "+998 97 3856071"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: const Text("Tab Bar"),
            bottom: const TabBar(
              tabs:[
                Tab(
                  icon: Icon(Icons.call),
                  child: Text("Call"),
                ),
                Tab(
                  icon: Icon(Icons.wifi),
                  child: Text("WIFI"),
                ),
                Tab(
                  icon: Icon(Icons.business_outlined),
                  child: Text("Business"),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                  if (count % 2 == 0) {
                    setState(() {
                      isTurnOn = true;
                    });
                  } else {
                    isTurnOn = false;
                  }
                },
                icon: isTurnOn ? _iconOn() : _iconOff(),
              )
            ],
          ),
          body: TabBarView(
            children: [
              Container(
                child: ListView.builder(
                    itemCount: names.length,
                    itemBuilder: (context, index) {
                      return _listOfContact(index);
                    }),
              ),
              Container(
                color: Colors.black,
                child: ListView.builder(
                    itemCount: namesWifi.length,
                    itemBuilder: (context, index) {
                      if (isTurnOn) {
                        return _wifiMode(index);
                      }
                      return Container();
                    }),
              ),
              Container(
                color: Colors.red,
              )
            ],
          ),
        )
    );
  }

  Widget _listOfContact(int index) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: BoxDecoration(
        // boxShadow:
      ),
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
        onTap: () => launch('tel://${numbers[index]}'),
        title: Text(
          names[index],
          style: const TextStyle(
              color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(numbers[index]),
        trailing: const Icon(
          Icons.call,
          color: Colors.greenAccent,
        ),
      ),
    );
  }

  Widget _wifiMode(int index) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      margin: const EdgeInsets.only(left: 20),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),

      child: ListTile(
        onTap: () {},
        selected: true,
        contentPadding: const EdgeInsets.all(5),
        title: Text(
          namesWifi[index],
          style: const TextStyle(color: Colors.blueGrey),
        ),
        trailing: Container(
          alignment: Alignment.centerRight,
          width: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: const Icon(
                  Icons.lock_rounded,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              const Icon(
                Icons.signal_wifi_4_bar_lock_rounded,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconOn() {
    return const Icon(
      Icons.toggle_on_outlined,
      size: 35,
    );
  }

  Widget _iconOff() {
    return const Icon(
      Icons.toggle_off_outlined,
      size: 35,
    );
  }
}
