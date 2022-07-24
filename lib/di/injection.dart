// service locator

import 'package:flutter_task/features/landing/presentation/bloc/navigation_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:test_core/core/servies/navigation_service.dart';

import '../features/practitioner/presentation/bloc/side_menu_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ! Blocs
  sl.registerFactory(() => NavigationBloc());
  sl.registerFactory(() => SideMenuBloc());

  //! Use cases

  //! Repository

  //! Data sources

  //! External
  sl.registerSingleton(NavigationService());
}
