import 'package:flutter/material.dart';

class Homescreenstatefull extends StatefulWidget {
  const Homescreenstatefull({super.key});
  @override
  State<StatefulWidget> createState() {
    return _Homescreenstatefull();
  }
}

class _Homescreenstatefull extends State<Homescreenstatefull> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Column(children: [Text("Hiii"), Text("Welcome $name")]),
              TextField(
                onChanged: (e) => {name = e, setState(() {})},
                decoration: InputDecoration(disabledBorder: InputBorder.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
