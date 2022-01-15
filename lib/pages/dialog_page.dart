import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);
  static const String id = "dialog_page";

  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _display() {
    if (Platform.isIOS) {
      _iosDialog();
    } else {
      _androidDialog();
    }
  }

  void _iosDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: const Text(
              "Log out",
              style: TextStyle(color: Colors.blue),
            ),
            content: const Text(
              "Are you sure you want to log out?",
              style: TextStyle(color: Colors.red),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
              TextButton(onPressed: () {}, child: const Text("Confirm")),
            ],
          );
        });
  }

  void _androidDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.deepPurple,
            title: const Text(
              "Log out",
              style: TextStyle(color: Colors.blue),
            ),
            content: const Text(
              "Are you sure you want to log out?",
              style: TextStyle(color: Colors.red),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
              TextButton(onPressed: () {}, child: const Text("Confirm")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Drawer and AlertDialog"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                _androidDialog();
              },
              child: const Text(
                "AndroidDialog",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.blue,
              shape: const StadiumBorder(),
            ),
            MaterialButton(
              onPressed: () {
                _iosDialog();
              },
              child: const Text(
                "IOSDialog",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.blue,
              shape: const StadiumBorder(),
            ),
            const SizedBox(
              height: 50,
            ),
            MaterialButton(
              onPressed: () {
                _display();
              },
              child: const Text(
                "Dialog",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.blue,
              shape: const StadiumBorder(),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 200,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.deepPurpleAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CircleAvatar(
                        radius: 35,
                        child: ClipOval(
                          child: Image.asset("assets/images/image.jpg"),
                        ),
                      ),
                    ),
                    const Text(
                      "DrawerHeader",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    const Text(
                      "Shaxobiddin Sultonov",
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                    Container(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: const Text(
                          "shaxobiddins00@gmail.com",
                          style: TextStyle(color: Colors.greenAccent),
                        )),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
               onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.folder_sharp),
              title: const Text("Chat Folders"),
               onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.call),
              title: const Text("Recent Calls"),
               onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.devices),
              title: const Text("Devices"),
               onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.language),
              title: const Text("Languages"),
               onTap: () {},
            ),
             ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text("Privacy"),
               onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
