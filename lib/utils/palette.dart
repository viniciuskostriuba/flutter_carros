import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor kToDark = MaterialColor(
    0xffe5c063, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xffdaa520), //10%
      100: Color(0xffdeae36), //20%
      200: Color(0xffe1b74d), //30%
      300: Color(0xffe5c063), //40%
      400: Color(0xffe9c979), //50%
      500: Color(0xffedd290), //60%
      600: Color(0xfff4e4bc), //70%
      700: Color(0xfff8edd2), //80%
      800: Color(0xffc4951d), //90%
      900: Color(0xffae841a), //100%
    },
  );
}
