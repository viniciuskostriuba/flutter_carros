import 'package:carros/pages/church_page.dart';
import 'package:carros/pages/donation_page.dart';
import 'package:carros/pages/pray_page.dart';
import 'package:carros/utils/palette.dart';
import 'package:carros/widgtes/bottom_bar.dart';
import 'package:carros/widgtes/drawer_list.dart';
import 'package:carros/widgtes/silver_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ContainerPage());

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: <Widget>[
          Expanded(
            child: SilverBar(),
          ),
          Expanded(
            child: BottomBar(),
          ),
        ],
      ),
    );
  }
}
