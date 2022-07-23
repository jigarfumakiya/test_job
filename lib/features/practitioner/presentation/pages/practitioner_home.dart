import 'package:flutter/material.dart';
import 'package:test_core/core/utils/responsive.dart';

import '../widget/web_navigation.dart';

class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        tablet: Container(),
        mobile: Container(),
        desktop: Row(
          children: <Widget>[
            WebNavigation(
              onItemSelected: (item) {},
              selectedIndex: 0,
            ),
            const VerticalDivider(),
            Container(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class PractitionerWeb extends StatelessWidget {
  const PractitionerWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
