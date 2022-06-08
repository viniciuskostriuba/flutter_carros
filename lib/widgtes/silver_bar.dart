import 'package:carros/utils/palette.dart';
import 'package:carros/widgtes/drawer_list.dart';
import 'package:flutter/material.dart';

class SilverBar extends StatefulWidget {
  const SilverBar({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<SilverBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerList(),
      appBar: AppBar(
        backgroundColor: Palette.kToDark,
        title: const Text('Paróquia Santa Luzia'),
      ),
    );
  }
}
