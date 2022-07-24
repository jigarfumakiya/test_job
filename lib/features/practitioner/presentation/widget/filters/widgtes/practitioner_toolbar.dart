import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/utils/responsive.dart';
import 'package:test_core/core/widget/icon_button.dart';

import '../../../../../../core/utils/app_images.dart';

class Toolbar extends StatelessWidget {
  final VoidCallback? onBackArrowTap;
  final bool isExpanded;
  final String title;

  const Toolbar({
    Key? key,
    required this.title,
    this.onBackArrowTap,
    this.isExpanded = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isTablet(context) ? 40 : 50,
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
                onTap: () {
                  if (onBackArrowTap != null) {
                    onBackArrowTap?.call();
                  }
                },
                icon: Icons.arrow_forward_ios_sharp,
              ),
              secondChild: AppIconButton(
                  onTap: () {
                    if (onBackArrowTap != null) {
                      onBackArrowTap?.call();
                    }
                  },
                  icon: Icons.arrow_back_ios_new),
            ),
            AppIconButton.formAsset(onTap: () {}, assetPath: AppImages.icMinus),
            AppIconButton(
              onTap: () {},
              icon: Icons.close,
            ),
            const SizedBox(width: 25),
            Text(
              title,
              style: AppTextStyles.blackBoldTextStyle24(),
            )
          ],
        ),
      ),
    );
  }
}
