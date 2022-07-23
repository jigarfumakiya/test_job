import 'package:flutter/material.dart';
import 'package:flutter_task/core/utils/responsive.dart';

import '../../../../core/utils/app_images.dart';

class PractitionerHome extends StatelessWidget {
  const PractitionerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        tablet: Container(),
        mobile: Container(),
        desktop: Row(
          children: <Widget>[
            NavigationRail(
              selectedIndex: 1,
              backgroundColor: Colors.black,
              destinations: [
                NavigationRailDestination(
                  label: Text('Dashbooard'),
                  icon: Image.asset(AppImages.icDashboard),
                ),
                NavigationRailDestination(
                  label: Text('Calendar'),
                  icon: Image.asset(AppImages.icCalendar),
                ),
                NavigationRailDestination(
                  label: Text('Clinical'),
                  icon: Image.asset(AppImages.icClinical),
                ),
                NavigationRailDestination(
                  label: Text('Patients'),
                  icon: Image.asset(AppImages.icPatients),
                ),
                NavigationRailDestination(
                  label: Text('Billing'),
                  icon: Image.asset(AppImages.icBilling),
                ),
              ],
            ),
            const VerticalDivider(),
            Container(
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
