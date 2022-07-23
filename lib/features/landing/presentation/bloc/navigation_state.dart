part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  const NavigationState();
}

class NavigationInitial extends NavigationState {
  @override
  List<Object> get props => [];
}

/// When user change the event clicking on other tabs
class NavigationChanged extends NavigationState {
  const NavigationChanged(this.index);

  final int index;

  @override
  List<Object> get props => [index];
}
