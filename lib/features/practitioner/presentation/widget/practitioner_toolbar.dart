import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_core/core/widget/icon_button.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_textstyle.dart';

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
              AppLocalizations.of(context)!.practitioner,
              style: AppTextStyles.blackBoldTextStyle24(),
            )
          ],
        ),
      ),
    );
  }
}
