import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  final imageUrl = "https://avatars.githubusercontent.com/u/82786865?v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
              accountName: Text("Love Sonkar"),
              accountEmail: Text("loveboss806@gmail.com"),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home),
            title: Text("Home", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.archivebox),
            title: Text("About", style: TextStyle(fontSize: 20)),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings),
            title: Text("Settings", style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
