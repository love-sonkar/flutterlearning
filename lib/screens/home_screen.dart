import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello",
                        style: TextStyle(
                          fontSize: 12,
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      Text("Welcome Back...", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  CircleAvatar(child: Icon(Icons.person)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
