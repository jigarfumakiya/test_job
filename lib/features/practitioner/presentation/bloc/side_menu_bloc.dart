import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'side_menu_event.dart';
part 'side_menu_state.dart';

/// Bloc for file for side menu events
class SideMenuBloc extends Bloc<SideMenuEvent, SideMenuState> {
  SideMenuBloc() : super(SideMenuInitial()) {
    on<SideMenuEvent>((event, emit) {
      if (event is ExpandSideMenuEvent) {
        /// when user click on open menu
        /// open side menu
        emit(SideMenuOpen());
      } else {
        /// when user click on hide menu
        /// open side menu
        emit(SideMenuClose());
      }
    });
  }
}
