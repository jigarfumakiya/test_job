import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

class AppChoiceChip extends StatelessWidget {
  final String text;
  final bool selected;

  const AppChoiceChip({
    Key? key,
    required this.text,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      onSelected: (value) {},
      elevation: 0,
      side: BorderSide(color: AppColors.geryColor),
      label: Text(text),
      selected: selected,
      padding: const EdgeInsets.all(4),
      labelStyle: selected
          ? AppTextStyles.whiteBoldTextStyle12()
          : AppTextStyles.blackBoldTextStyle12(),
      backgroundColor: Colors.white,
      selectedColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    );
  }
}
