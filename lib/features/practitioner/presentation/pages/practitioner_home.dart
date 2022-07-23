import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioner_toolbar.dart';
import 'package:test_core/core/utils/responsive.dart';
import 'package:test_core/core/widget/app_textfiled.dart';

import '../../../../core/utils/app_colors.dart';

class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
          tablet: Container(),
          mobile: Container(),
          desktop: const PractitionerWeb()),
    );
  }
}

class PractitionerWeb extends StatelessWidget {
  const PractitionerWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          const PractitionerToolbar(),
          const SizedBox(height: 5),
          _buildSearchTextInput(context),
          const SizedBox(height: 5),
          buildSidePanel(context),
        ],
      ),
    );
  }

  Widget _buildSearchTextInput(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.iconColor.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12)),
      child: AppTextField(
        hintText: AppLocalizations.of(context)!.searchText,
        icon: Icon(
          Icons.search,
          color: AppColors.iconColor,
        ),
      ),
    );
  }

  Widget buildSidePanel(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
            ),
          ),
          VerticalDivider(
            color: AppColors.iconColor,
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
