import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../utils/app_local.dart';

class AppRangeSlider extends StatefulWidget {
  const AppRangeSlider({Key? key}) : super(key: key);

  @override
  State<AppRangeSlider> createState() => _AppRangeSliderState();
}

class _AppRangeSliderState extends State<AppRangeSlider> {
  SfRangeValues _values = const SfRangeValues(14, 19);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(appLocaleInstance().time,
                style: AppTextStyles.blackBoldTextStyle14()),
            Text(
                'from ${int.parse(_values.start.toString())}:00 to ${int.parse(_values.end.toString())}:00',
                style: AppTextStyles.blackBoldTextStyle14())
          ],
        ),
        SfRangeSliderTheme(
          data: SfRangeSliderThemeData(
            activeTrackColor: Colors.black,
            inactiveTrackColor: AppColors.iconColor.withOpacity(0.1),
            thumbColor: Colors.white,
            thumbStrokeColor: Colors.black,
            thumbStrokeWidth: 2,
            thumbRadius: 15,
            activeTrackHeight: 2,
            inactiveTrackHeight: 2,
            overlayColor: Colors.black12,
          ),
          child: SfRangeSlider(
            min: 00,
            max: 24,
            values: _values,
            stepSize: 1,
            onChanged: (dynamic values) {
              setState(() {
                _values = values;
              });
            },
          ),
        ),
      ],
    );
  }
}
