import 'package:carros/utils/palette.dart';
import 'package:carros/widgtes/drawer_list.dart';
import 'package:flutter/material.dart';

class ChurchPage extends StatefulWidget {
  const ChurchPage({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<ChurchPage> {
  List<String> list = [
    'Title 1',
    'Title 2',
    'Title 3',
    'Title 4',
    'Title 5',
    'Title 6',
    'Title 7',
    'Title 8',
    'Title 9',
    'Title 10',
    'Title 11',
    'Title 12',
    'Title 13',
    'Title 14',
    'Title 15',
    'Title 16',
    'Title 17',
    'Title 18',
    'Title 19',
    'Title 20'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(child: Text('Entry ${list[index]}')),
            );
          }),
    );
  }
}
