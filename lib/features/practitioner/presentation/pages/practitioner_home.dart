import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_task/core/common_widget/app_range_slider.dart';
import 'package:flutter_task/features/practitioner/presentation/widget/practitioner_toolbar.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:test_core/core/utils/app_colors.dart';
import 'package:test_core/core/utils/app_textstyle.dart';
import 'package:test_core/core/utils/responsive.dart';
import 'package:test_core/core/widget/app_textfiled.dart';

import '../../../../core/utils/app_local.dart';
import '../widget/specialty_widget.dart';

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

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
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  calendarWidget(),
                  const SizedBox(height: 20),
                  soonestAvailabilityWidget(context),
                  const SizedBox(height: 15),
                  const AppRangeSlider(),
                  const SizedBox(height: 10),
                  const SpecialtyWidget()
                ],
              ),
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

  Widget soonestAvailabilityWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          appLocaleInstance().soonestAvailability,
          style: AppTextStyles.blackBoldTextStyle14(),
        ),
        FlutterSwitch(
          height: 28,
          width: 50,
          value: false,
          activeColor: AppColors.iconColor,
          inactiveColor: Colors.black12,
          inactiveToggleColor: Colors.white,
          inactiveSwitchBorder: Border.all(color: AppColors.geryColor),
          onToggle: (value) {},
        ),
      ],
    );
  }

  Widget calendarWidget() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TableCalendar(
          firstDay: kFirstDay,
          lastDay: kLastDay,
          focusedDay: kToday,
          calendarFormat: CalendarFormat.month,
          availableGestures: AvailableGestures.horizontalSwipe,
          dayHitTestBehavior: HitTestBehavior.opaque,
          daysOfWeekVisible: true,
          daysOfWeekStyle: DaysOfWeekStyle(
            dowTextFormatter: (date, locale) {
              return DateFormat('E').format(date).toUpperCase();
            },
            weekdayStyle: AppTextStyles.blackBoldTextStyle12(),
            weekendStyle: AppTextStyles.blackBoldTextStyle12(),
          ),
          rowHeight: 40,
          calendarStyle: CalendarStyle(
              isTodayHighlighted: true,
              defaultTextStyle: AppTextStyles.blackTextStyle14(),
              weekendTextStyle: AppTextStyles.blackTextStyle14(),
              selectedDecoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.iconColor,
              )),
          headerStyle: HeaderStyle(
            titleTextStyle: AppTextStyles.blackBoldTextStyle12(),
            formatButtonVisible: false,
            titleCentered: true,
          ),
          selectedDayPredicate: (day) {
            // Use `selectedDayPredicate` to determine which day is currently selected.
            // If this returns true, then `day` will be marked as selected.

            // Using `isSameDay` is recommended to disregard
            // the time-part of compared DateTime objects.
            return isSameDay(kToday, day);
          },
        ),
      ),
    );
  }
}
