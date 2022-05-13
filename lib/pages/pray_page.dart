import 'package:flutter/material.dart';

void main() => runApp(const PrayPage());

class PrayPage extends StatelessWidget {
  const PrayPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Pray Page"),
    );
  }
}
