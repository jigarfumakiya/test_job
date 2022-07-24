import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../../core/utils/app_local.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          appLocaleInstance().location,
          style: AppTextStyles.blackBoldTextStyle14(),
        ),
        const SizedBox(height: 10),
        Wrap(runSpacing: 8, spacing: 8, children: [
          _buildChipWidget(
              icon: Icons.add_box,
              title: appLocaleInstance().office,
              selected: true),
          _buildChipWidget(
              icon: Icons.home,
              title: appLocaleInstance().home,
              selected: false),
          _buildChipWidget(
              icon: Icons.video_call,
              title: appLocaleInstance().virtual,
              selected: false),
        ])
      ],
    );
  }

  Widget _buildChipWidget(
      {required bool selected, required String title, required IconData icon}) {
    return ChoiceChip(
      onSelected: (value) {},
      elevation: 0,
      side: BorderSide(color: AppColors.geryColor),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon,
              color: selected ? Colors.white : AppColors.iconColor, size: 20),
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
