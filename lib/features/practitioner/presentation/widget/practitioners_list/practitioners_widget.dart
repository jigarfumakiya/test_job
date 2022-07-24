import 'package:flutter/material.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioners_list/widget/item_builder.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/utils/responsive.dart';

import '../../../../../core/utils/app_local.dart';

var widgetKey = GlobalKey();

class PractitionersWidget extends StatelessWidget {
  const PractitionersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      /// Get the size of the widget not the screen we can calculate
      ///  If the width is less then 1370 then change grid view axis

      print(constraints.maxWidth);

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '30 ${appLocaleInstance().practitioners}',
              style: AppTextStyles.blackBoldTextStyle14(),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                controller: ScrollController(), //jus
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.isTablet(context)
                      ? 1
                      : constraints.maxWidth > 930
                          ? 3
                          : 2,
                  // Responsive values
                  //min  930
                  childAspectRatio: Responsive.isTablet(context)
                      ? (3 / 0.8)
                      : constraints.maxWidth > 930
                          ? (3 / 1.3)
                          : (3 / 1.23),
                  // Responsive values
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                ),
                // padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return const ItemBuilder();
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      );
    });
  }
}
