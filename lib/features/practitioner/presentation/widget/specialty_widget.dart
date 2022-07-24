import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../core/utils/app_local.dart';

class SpecialtyWidget extends StatefulWidget {
  const SpecialtyWidget({Key? key}) : super(key: key);

  @override
  State<SpecialtyWidget> createState() => _SpecialtyWidgetState();
}

class _SpecialtyWidgetState extends State<SpecialtyWidget> {
  final List<String> listValues = [
    appLocaleInstance().all,
    appLocaleInstance().general_practice,
    appLocaleInstance().ob_gyn,
    appLocaleInstance().ent,
    appLocaleInstance().physiotherapy,
    appLocaleInstance().plus_three_more,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          appLocaleInstance().specialty,
          style: AppTextStyles.blackBoldTextStyle14(),
        ),
        const SizedBox(height: 10),
        Wrap(
            runSpacing: 8,
            spacing: 8,
            children: listValues
                .map(
                  (value) => ChoiceChip(
                    onSelected: (value) {},
                    elevation: 0,
                    side: BorderSide(color: AppColors.geryColor),
                    label: Text(value),
                    selected: value == appLocaleInstance().all,
                    padding: const EdgeInsets.all(8),
                    labelStyle: value == appLocaleInstance().all
                        ? AppTextStyles.whiteBoldTextStyle14()
                        : AppTextStyles.blackBoldTextStyle14(),
                    backgroundColor: Colors.white,
                    selectedColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                )
                .toList()),
      ],
    );
  }
}
