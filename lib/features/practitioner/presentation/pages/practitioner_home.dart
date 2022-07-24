import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/features/practitioner/presentation/pages/create_appointment.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/filters/filter_slide_panel.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/filters/widgtes/practitioner_toolbar.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioners_list/practitioners_widget.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/responsive.dart';
import 'package:test_core/core/widget/app_textfiled.dart';

import '../../../../core/common_widget/collapsible_menu.dart';
import '../../../../core/utils/app_local.dart';
import '../../../../di/injection.dart';
import '../bloc/side_menu_bloc.dart';

/// Practitioner Landing screen
class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
          tablet: PractitionerWeb(),
          mobile: Container(),
          desktop: PractitionerWeb()),
    );
  }
}

class PractitionerWeb extends StatelessWidget {
  PractitionerWeb({Key? key}) : super(key: key);
  final bloc = sl<SideMenuBloc>();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: BlocBuilder<SideMenuBloc, SideMenuState>(
            bloc: bloc,
            builder: (context, state) {
              /// Side menu bloc
              if (state is SideMenuOpen) {
                return const CollapsibleMenu(
                  isExpanded: true,
                  expandedWidget: CreateAppointment(onCreate: null),
                );
              } else {
                return const CollapsibleMenu(
                  isExpanded: false,
                  expandedWidget: CreateAppointment(onCreate: null),
                );
              }
            },
          ),
        ),
        VerticalDivider(color: AppColors.geryColor, thickness: 2),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Column(
              children: <Widget>[
                toolbarBloc(),
                const SizedBox(height: 5),
                _buildSearchTextInput(context),
                const SizedBox(height: 15),
                buildSidePanel(context),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget toolbarBloc() {
    return BlocBuilder<SideMenuBloc, SideMenuState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is SideMenuOpen) {
          return Toolbar(
            title: appLocaleInstance().practitioner,
            onBackArrowTap: onSideMenuTap,
            isExpanded: true,
          );
        } else {
          return Toolbar(
            title: appLocaleInstance().practitioner,
            onBackArrowTap: onSideMenuTap,
            isExpanded: false,
          );
        }
      },
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
          Expanded(
            flex: Responsive.isTablet(context) ? 3 : 2,
            child: const FilterSlidePanel(),
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

  /// class methods
  void onSideMenuTap() {
    if (bloc.state is SideMenuOpen) {
      bloc.add(HideSideMenuEvent());
    } else {
      bloc.add(ExpandSideMenuEvent());
    }
  }
}
