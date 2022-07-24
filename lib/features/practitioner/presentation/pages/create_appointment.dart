import 'package:flutter/material.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';

import '../../../../core/common_widget/primary_button.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_local.dart';
import '../widget/app_choice_chip.dart';

class CreateAppointment extends StatelessWidget {
  final bool disableTile;
  final VoidCallback? onCreate;

  const CreateAppointment({
    Key? key,
    this.disableTile = true,
    this.onCreate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MediaQuery(
      data: const MediaQueryData(padding: EdgeInsets.zero),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: SizedBox(
          height: size.height,
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
              Divider(color: AppColors.geryColor, height: 2),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: PrimaryButton(
                  onTap: onCreate,
                  backgroundColor: Colors.black,
                  hoverChildColor: Colors.white,
                  hoverColor: Colors.black,
                  childColor: Colors.white,
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 55)),
                  child: Text(appLocaleInstance().create),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle({required String title, required bool selected}) {
    return IgnorePointer(
      ignoring: disableTile,
      child: ExpansionTile(
        initiallyExpanded:
            (!disableTile && title == appLocaleInstance().practitioners),
        title: Text(title, style: AppTextStyles.blackBoldTextStyle14()),
        childrenPadding: const EdgeInsets.all(5),
        trailing: const Icon(Icons.add),
        iconColor: AppColors.iconColor,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        collapsedIconColor: AppColors.iconColor,
        expandedAlignment: Alignment.centerLeft,
        collapsedBackgroundColor: selected ? AppColors.geryColor : Colors.white,
        children: [
          if (title == appLocaleInstance().practitioners)
            Row(
              children: <Widget>[
                Image.asset(
                  AppImages.icUser,
                  height: 25,
                  width: 25,
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
                  onTap: () {},
                  child: const Text("Co-visit"),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
