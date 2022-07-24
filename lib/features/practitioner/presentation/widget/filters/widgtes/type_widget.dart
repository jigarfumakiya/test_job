import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_local.dart';

class TypeWidget extends StatefulWidget {
  const TypeWidget({Key? key}) : super(key: key);

  @override
  State<TypeWidget> createState() => _TypeWidgetState();
}

class _TypeWidgetState extends State<TypeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          appLocaleInstance().type,
          style: AppTextStyles.blackBoldTextStyle14(),
        ),
        const SizedBox(height: 10),
        Wrap(runSpacing: 8, spacing: 8, children: [
          _buildChipWidget(
              icon: AppImages.icFirstTime,
              title: appLocaleInstance().firstTime,
              selected: true),
          _buildChipWidget(
              icon: AppImages.icFollowUp,
              title: appLocaleInstance().followUp,
              selected: false),
          _buildChipWidget(
              icon: AppImages.icWalkIn,
              title: appLocaleInstance().walkIn,
              selected: false),
        ])
      ],
    );
  }

  Widget _buildChipWidget(
      {required bool selected, required String title, required String icon}) {
    return ChoiceChip(
      onSelected: (value) {},
      elevation: 0,
      side: BorderSide(color: AppColors.geryColor),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(icon,
              color: selected ? Colors.white : AppColors.iconColor,
              width: 20,
              height: 20),
          const SizedBox(width: 5),
          Text(title,
              style: selected
                  ? AppTextStyles.whiteBoldTextStyle14()
                  : AppTextStyles.blackBoldTextStyle14()),
        ],
      ),
      selected: selected,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 3),
      labelStyle: AppTextStyles.blackBoldTextStyle14(),
      backgroundColor: Colors.white,
      selectedColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
