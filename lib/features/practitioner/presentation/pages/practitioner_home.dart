import 'package:flutter/material.dart';

class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: 1,
            backgroundColor: Colors.black,
            destinations: [],
          ),
          const VerticalDivider(),
          Container(
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
