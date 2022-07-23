part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();
}

class ChangeNavigationEvent extends NavigationEvent {
  /// New index that user select
  final int newSelectedIndex;

  const ChangeNavigationEvent(this.newSelectedIndex);

  @override
  List<Object?> get props => [newSelectedIndex];
}
