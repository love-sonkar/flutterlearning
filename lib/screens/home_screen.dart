import 'package:flutter/material.dart';
import 'package:loginpage/models/Item.dart';
import 'package:loginpage/widgets/Item_widget.dart';
import 'package:loginpage/widgets/drawer.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  final imageUrl = "https://avatars.githubusercontent.com/u/82786865?v=4";

  @override
  Widget build(BuildContext context) {
    final list = List.generate(15, (index) => ItemsModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(10),
        leadingWidth: 25,
        title: Text("NOTES"),
        actions: [CircleAvatar(backgroundImage: NetworkImage(imageUrl))],
      ),
      drawer: DrawerWidget(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: list[index]);
          },
        ),
      ),
    );
  }
}

Widget toppanel() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello",
            style: TextStyle(fontSize: 12, overflow: TextOverflow.visible),
          ),
          Text("Welcome Back...", style: TextStyle(fontSize: 12)),
        ],
      ),
      CircleAvatar(child: Icon(Icons.person)),
    ],
  );
}
