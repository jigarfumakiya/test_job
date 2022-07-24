import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../core/utils/app_local.dart';

class PractitionersWidget extends StatelessWidget {
  const PractitionersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '30 ${appLocaleInstance().practitioners}',
          style: AppTextStyles.blackBoldTextStyle14(),
        )
      ],
    );
  }
}
