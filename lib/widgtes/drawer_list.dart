// ignore_for_file: prefer_const_constructors

import 'package:carros/utils/palette.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatefulWidget {
  @override
  State<DrawerList> createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: _listViewDrawer(),
      ),
    );
  }

  _listViewDrawer() {
    return ListView(
      children: <Widget>[
        _headerDrawerUnLogged(),
        ListTile(
          leading: Icon(Icons.menu_book),
          title: Text("Blíblia"),
          subtitle: Text("mais informações"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print("Item 1");
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.front_hand),
          title: Text("Pedido de Oração"),
          subtitle: Text("mais informações"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print("Item 1");
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Logout"),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            print("Item 1");
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  _headerDrawerLogged() {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Palette.kToDark,
      ),
      accountName: Text("Carro Carrito"),
      accountEmail: Text("carrito@gmail.com"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage("assets/images/carro.png"),
      ),
    );
  }

  _headerDrawerUnLogged() {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Palette.kToDark,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _textLogin(
                  "Entrar",
                  null,
                ),
                _textLogin(
                  "Cadastrar-se",
                  null,
                ),
              ],
            ),
          ],
        ));
  }

  _textLogin(text, onPressed) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Colors.white,
        textStyle: TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
