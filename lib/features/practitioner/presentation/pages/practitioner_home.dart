import 'package:flutter/material.dart';
import 'package:test_core/core/utils/responsive.dart';

class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
          tablet: Container(),
          mobile: Container(),
          desktop: const PractitionerWeb()),
    );
  }
}

class PractitionerWeb extends StatelessWidget {
  const PractitionerWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
