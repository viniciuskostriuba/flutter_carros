import 'package:flutter/material.dart';

void main() => runApp(const ChurchPage());

class ChurchPage extends StatelessWidget {
  const ChurchPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Church Page"),
    );
  }
}
