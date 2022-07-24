import 'package:flutter/material.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioners_list/widget/item_builder.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../core/utils/app_local.dart';

class PractitionersWidget extends StatelessWidget {
  const PractitionersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Get the size of the screen we can calculate
    ///  If the width is less then 1370 then change grid view axis
    Size size = MediaQuery.of(context).size;
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
                crossAxisCount: size.width > 1370 ? 3 : 2,
                // Responsive values
                childAspectRatio: size.width > 1370 ? (3 / 1.3) : (3 / 1),
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
  }
}
