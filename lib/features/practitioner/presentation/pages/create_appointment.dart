import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../core/utils/app_local.dart';
import '../widget/app_choice_chip.dart';

class CreateAppointment extends StatelessWidget {
  const CreateAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(padding: EdgeInsets.zero),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                appLocaleInstance().createAppointment,
                style: AppTextStyles.blackBoldTextStyle24(),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  AppChoiceChip(
                    selected: true,
                    text: appLocaleInstance().general,
                  ),
                  AppChoiceChip(
                    selected: false,
                    text: appLocaleInstance().group,
                  ),
                  AppChoiceChip(
                    selected: false,
                    text: appLocaleInstance().blockSlot,
                  ),
                  AppChoiceChip(
                    selected: false,
                    text: appLocaleInstance().advanced,
                  ),
                  AppChoiceChip(
                    selected: false,
                    text: appLocaleInstance().walkIn,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            _buildTitle(
                selected: true, title: appLocaleInstance().practitioners),
            Divider(color: AppColors.geryColor, height: 2),
            _buildTitle(
                selected: false, title: appLocaleInstance().profileDateTime),
            Divider(color: AppColors.geryColor, height: 2),
            _buildTitle(
                selected: false, title: appLocaleInstance().servicesPayment),
            Divider(color: AppColors.geryColor, height: 2),
            _buildTitle(selected: false, title: appLocaleInstance().patient),
            Divider(color: AppColors.geryColor, height: 2),
            _buildTitle(selected: false, title: appLocaleInstance().notes),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle({required String title, required bool selected}) {
    return ListTile(
      onTap: () {},
      minVerticalPadding: 0,
      tileColor: selected ? AppColors.geryColor : Colors.white,
      trailing: const Icon(Icons.add, color: Colors.black),
      title: Text(title, style: AppTextStyles.blackBoldTextStyle14()),
    );
  }
}
