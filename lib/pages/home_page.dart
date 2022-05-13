import 'package:carros/utils/palette.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Palette.kToDark,
        items: const <BottomNavigationBarItem>[
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
        selectedItemColor: Colors.white,
      ),
      body: _body(),
    );
  }

  _body() {
    return Center(
      child: Text(
        "Vinicius",
        style: TextStyle(
          fontSize: 22,
        ),
      ),
    );
  }
}
