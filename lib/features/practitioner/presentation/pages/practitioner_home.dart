import 'package:flutter/material.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/filters/filter_slide_panel.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/filters/widgtes/practitioner_toolbar.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioners_list/practitioners_widget.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/responsive.dart';
import 'package:test_core/core/widget/app_textfiled.dart';

import '../../../../core/utils/app_local.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: <Widget>[
          const PractitionerToolbar(),
          const SizedBox(height: 5),
          _buildSearchTextInput(context),
          const SizedBox(height: 15),
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
        hintText: appLocaleInstance().searchText,
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
          const Expanded(
            flex: 2,
            child: FilterSlidePanel(),
          ),
          const SizedBox(width: 15),
          VerticalDivider(color: AppColors.geryColor),
          const Expanded(
            flex: 6,
            child: PractitionersWidget(),
          ),
        ],
      ),
    );
  }
}
