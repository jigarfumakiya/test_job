import 'package:flutter/material.dart';
import 'package:flutter_task/features/practitioner/presentation/pages/create_appointment.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/filters/widgtes/practitioner_toolbar.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/utils/responsive.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_local.dart';
import '../../../landing/presentation/widgets/web_navigation.dart';

class PractitionerDetails extends StatelessWidget {
  const PractitionerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Responsive(
          mobile: Container(),
          tablet: const PractitionerDetailsWeb(),
          desktop: const PractitionerDetailsWeb()),
    );
  }
}

class PractitionerDetailsWeb extends StatelessWidget {
  const PractitionerDetailsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      children: <Widget>[
        WebNavigation(
          onItemSelected: (value) {},
          selectedIndex: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SizedBox(
            width: size.width * 0.25,
            child: CreateAppointment(disableTile: false, onCreate: () {}),
          ),
        ),
        VerticalDivider(color: AppColors.geryColor, thickness: 2),
        _buildScreenWidget(context)
      ],
    );
  }

  Widget _buildScreenWidget(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Toolbar(
              title: appLocaleInstance().profileDateTime,
              isExpanded: true,
              onBackArrowTap: () {
                Navigator.of(context).pop();
              },
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.geryColor)),
              child: Row(
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
                  Image.asset(
                    AppImages.icMinus,
                    width: 15,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
