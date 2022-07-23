// service locator

import 'package:flutter_task/features/landing/presentation/bloc/navigation_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ! Blocs
  sl.registerFactory(() => NavigationBloc());

  //! Use cases

  //! Repository

  //! Data sources

  //! External
}
