import 'package:flutter/material.dart';
import 'package:flutter_task/core/common_widget/primary_button.dart';
import 'package:flutter_task/core/utils/app_images.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../../core/utils/app_local.dart';

class PracticeWidget extends StatelessWidget {
  const PracticeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          appLocaleInstance().practice,
          style: AppTextStyles.blackBoldTextStyle14(),
        ),
        const SizedBox(height: 10),
        PrimaryButton(
          onTap: () {},
          hoverColor: Colors.black,
          hoverChildColor: Colors.white,
          backgroundColor: Colors.black,
          childColor: Colors.white,
          child: Row(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  AppImages.icMyAccount,
                ),
              ),
              const SizedBox(width: 8),
              Text(appLocaleInstance().primaryClinicDubai),
            ],
          ),
        ),
        const SizedBox(height: 10),
        PrimaryButton(
          onTap: () {},
          hoverColor: Colors.black,
          hoverChildColor: Colors.white,
          child: Center(child: Text(appLocaleInstance().showAll)),
        ),
      ],
    );
  }
}
