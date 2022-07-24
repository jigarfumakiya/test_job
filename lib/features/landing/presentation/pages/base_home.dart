import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_task/di/injection.dart';
import 'package:flutter_task/features/practitioner/presentation/pages/practitioner_home.dart';
import 'package:test_core/core/utils/responsive.dart';

import '../bloc/navigation_bloc.dart';
import '../widgets/web_navigation.dart';

class BaseHome extends StatelessWidget {
  const BaseHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: const Text('Not Supported Yet'),
        tablet: WebHome(),
        desktop: WebHome(),
      ),
    );
  }
}

class WebHome extends StatelessWidget {
  WebHome({Key? key}) : super(key: key);

  final bloc = sl<NavigationBloc>();
  final List<Widget> children = const [
    PractitionerHome(),
    Center(child: Text('Not Supported Yet')),
    Center(child: Text('Not Supported Yet')),
    Center(child: Text('Not Supported Yet')),
    Center(child: Text('Not Supported Yet')),
    Center(child: Text('Not Supported Yet')),
    Center(child: Text('Not Supported Yet')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is NavigationChanged) {
          return _buildScreenWidget(state.index);
        }
        return _buildScreenWidget(0);
      },
    );
  }

  /// pages for this screens
  Widget _buildScreenWidget(int selectedIndex) {
    return Row(
      children: <Widget>[
        WebNavigation(
          onItemSelected: onItemSelect,
          selectedIndex: selectedIndex,
        ),
        // const VerticalDivider(),
        Expanded(child: children.elementAt(selectedIndex))
      ],
    );
  }

  // class methods
  void onItemSelect(NavigationItem item) {
    bloc.add(ChangeNavigationEvent(item.index));
  }
}
