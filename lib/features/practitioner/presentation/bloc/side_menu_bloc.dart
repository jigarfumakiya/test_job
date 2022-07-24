import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'side_menu_event.dart';
part 'side_menu_state.dart';

class SideMenuBloc extends Bloc<SideMenuEvent, SideMenuState> {
  SideMenuBloc() : super(SideMenuInitial()) {
    on<SideMenuEvent>((event, emit) {
      if (event is ExpandSideMenuEvent) {
        emit(SideMenuOpen());
      } else {
        emit(SideMenuClose());
      }
    });
  }
}
