import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/widget/icon_button.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_local.dart';

class PractitionerToolbar extends StatelessWidget {
  const PractitionerToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            AppIconButton(
              onTap: () {},
              icon: Icons.arrow_forward_ios_sharp,
            ),
            const SizedBox(width: 15),
            AppIconButton.formAsset(onTap: () {}, assetPath: AppImages.icMinus),
            const SizedBox(width: 15),
            AppIconButton(
              onTap: () {},
              icon: Icons.close,
            ),
            const SizedBox(width: 25),
            Text(
              appLocaleInstance().practitioner,
              style: AppTextStyles.blackBoldTextStyle24(),
            )
          ],
        ),
      ),
    );
  }
}
