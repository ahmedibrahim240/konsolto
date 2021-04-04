import 'package:flutter/material.dart';

import 'homeClasses/homeAppBar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        primary: true,
        children: [
          HomeAppBar(),
        ],
      ),
    );
  }
}
