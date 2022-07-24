import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../../core/utils/app_images.dart';

final list = [
  '9:30a',
  '2:00p',
  '2:30p',
  '3:30p',
];

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
          side: BorderSide(
            color: AppColors.geryColor,
          ),
          borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  AppImages.icUser,
                  height: 45,
                  width: 45,
                  fit: BoxFit.fill,
                  color: Colors.grey,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mark Black',
                        style: AppTextStyles.blackBoldTextStyle14(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          'General Practice',
                          style: AppTextStyles.blackBoldTextStyle11(),
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minimumSize: const Size(0, 0),
                  ),
                  child: Text(
                    "Select",
                    style: AppTextStyles.blackBoldTextStyle12(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Text(
              '2 shifts:  9:00a - 1:00p  •  5:00a - 7:00p',
              style: AppTextStyles.blackBoldTextStyle13(),
            ),
            Text(
              '20 office slots on May 22',
              style: AppTextStyles.blackBoldTextStyle13Underline(),
            ),
            const SizedBox(height: 5),
            Row(
              children: <Widget>[
                Text('Next:', style: AppTextStyles.blackBoldTextStyle13()),
                const SizedBox(width: 10),
                Wrap(
                  spacing: 5,
                  children: list
                      .map<Widget>((e) => ChoiceChip(
                          onSelected: (value) {},
                          padding: const EdgeInsets.all(0),
                          elevation: 1,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                          label: Text(e,
                              style: AppTextStyles.blackBoldTextStyle12()),
                          selected: false))
                      .toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
