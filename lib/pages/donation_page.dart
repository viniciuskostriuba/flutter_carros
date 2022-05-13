import 'package:flutter/material.dart';

void main() => runApp(const DonationPage());

class DonationPage extends StatelessWidget {
  const DonationPage({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Donation Page"),
    );
  }
}
