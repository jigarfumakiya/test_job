import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigationEvent>((event, emit) {
      if (event is ChangeNavigationEvent) {
        // Pass the new index to ui
        emit(NavigationChanged(event.newSelectedIndex));
      }
    });
  }
}
