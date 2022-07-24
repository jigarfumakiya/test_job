import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/widget/icon_button.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_local.dart';

class PractitionerToolbar extends StatelessWidget {
  final VoidCallback onSideMenuTap;
  final bool isExpanded;

  const PractitionerToolbar({
    Key? key,
    required this.onSideMenuTap,
    this.isExpanded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10),
            // use AnimatedCrossFade so user does not have laggy performace
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 300),
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: AppIconButton(
                onTap: onSideMenuTap,
                icon: Icons.arrow_forward_ios_sharp,
              ),
              secondChild: AppIconButton(
                  onTap: onSideMenuTap, icon: Icons.arrow_back_ios_new),
            ),
            AppIconButton.formAsset(onTap: () {}, assetPath: AppImages.icMinus),
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
