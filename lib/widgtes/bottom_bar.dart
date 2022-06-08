import 'package:carros/pages/church_page.dart';
import 'package:carros/pages/donation_page.dart';
import 'package:carros/pages/pray_page.dart';
import 'package:carros/utils/palette.dart';
import 'package:carros/widgtes/drawer_list.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<BottomBar> {
  static const List<Widget> _widgetOptions = <Widget>[
    PrayPage(),
    ChurchPage(),
    DonationPage(),
  ];

  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.kToDark,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.front_hand),
            label: 'Pedir Oração',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.church),
            label: 'Igreja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.volunteer_activism),
            label: 'Doações',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
