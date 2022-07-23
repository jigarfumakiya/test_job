import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_textstyle.dart';

/// NavigationRail for the web

// Enum for all items
enum NavigationItem {
  dashboard,
  calendar,
  clinical,
  patients,
  billing,
  notifications,
  help,
  myAccount
}

typedef SelectedIem = void Function(NavigationItem item);

class WebNavigation extends StatelessWidget {
  final int selectedIndex;
  final SelectedIem onItemSelected;

  const WebNavigation({
    Key? key,
    required this.onItemSelected,
    this.selectedIndex = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        NavigationRail(
          selectedIndex: selectedIndex,
          backgroundColor: Colors.black,
          indicatorColor: Colors.white24,
          useIndicator: true,
          labelType: NavigationRailLabelType.all,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(AppImages.appIcon),
            ),
          ),
          trailing: Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _buildBottomItem(
                        icon: AppImages.icNotification,
                        title: AppLocalizations.of(context)!.notifications),
                    const SizedBox(height: 20),
                    _buildBottomItem(
                        icon: AppImages.icHelp,
                        title: AppLocalizations.of(context)!.help),
                    const SizedBox(height: 20),
                    _buildBottomItem(icon: AppImages.icMyAccount, title: ''),
                  ],
                ),
              ),
            ),
          ),
          onDestinationSelected: (selectedIndex) {
            onItemSelected(mapIndexToItem(selectedIndex));
          },
          destinations: [
            _buildNavigationDestination(
                title: AppLocalizations.of(context)!.dashboard,
                icon: AppImages.icDashboard),
            _buildNavigationDestination(
                title: AppLocalizations.of(context)!.calendar,
                icon: AppImages.icCalendar),
            _buildNavigationDestination(
                title: AppLocalizations.of(context)!.clinical,
                icon: AppImages.icClinical),
            _buildNavigationDestination(
                title: AppLocalizations.of(context)!.patients,
                icon: AppImages.icPatients),
            _buildNavigationDestination(
                title: AppLocalizations.of(context)!.billing,
                icon: AppImages.icBilling),
          ],
        ),
      ],
    );
  }

  /// Build each item
  NavigationRailDestination _buildNavigationDestination(
      {required String title, required String icon}) {
    return NavigationRailDestination(
      label: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Text(
          title,
          style: AppTextStyles.whiteBoldTextStyle10(),
        ),
      ),
      icon: Image.asset(icon, height: 25),
    );
  }

  Widget _buildBottomItem({required String title, required String icon}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Image.asset(icon, height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            title,
            style: AppTextStyles.whiteBoldTextStyle10(),
          ),
        )
      ],
    );
  }
}

/// Map the selected index to item
NavigationItem mapIndexToItem(int index) {
  if (index == 0) {
    return NavigationItem.dashboard;
  } else if (index == 1) {
    return NavigationItem.calendar;
  } else if (index == 2) {
    return NavigationItem.clinical;
  } else if (index == 3) {
    return NavigationItem.patients;
  } else if (index == 4) {
    return NavigationItem.billing;
  } else if (index == 5) {
    return NavigationItem.notifications;
  } else if (index == 6) {
    return NavigationItem.help;
  }
  return NavigationItem.myAccount;
}
