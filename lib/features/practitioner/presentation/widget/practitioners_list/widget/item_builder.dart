import 'package:flutter/material.dart';
import 'package:flutter_task/core/common_widget/primary_button.dart';
import 'package:test_core/core/servies/navigation_service.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../../../core/routes/routes.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../di/injection.dart';

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
                PrimaryButton(
                  hoverColor: Colors.black,
                  hoverChildColor: Colors.white,
                  style: ElevatedButton.styleFrom(
                    textStyle: AppTextStyles.blackBoldTextStyle12(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 17),
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    minimumSize: const Size(0, 0),
                  ),
                  onTap: onSelectTap,
                  child: const Text("Select"),
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
                      .map<Widget>((e) => PrimaryButton(
                            onTap: () {},
                            style: ElevatedButton.styleFrom(
                                textStyle: AppTextStyles.blackBoldTextStyle12(),
                                minimumSize: const Size(0, 0),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 8)),
                            hoverColor: Colors.black,
                            childColor: Colors.black,
                            hoverChildColor: Colors.white,
                            child: Text(e),
                          ))
                      .toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  //class methods

  void onSelectTap() {
    /// Todo Move this logic too navigation services
    final context = sl<NavigationService>().navigatorKey.currentContext!;
    Navigator.pushNamed(context, RoutesPath.practitionerDetailsWeb);
  }
}
