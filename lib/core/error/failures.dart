import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  final List<dynamic>? properties;

  const Failures([this.properties = const <dynamic>[]]) : super();

  @override
  List<Object?> get props => <dynamic>[];
}

///  these are some generally server Exception
class ServerFailure extends Failures {
  final String errorMessage;

  const ServerFailure(this.errorMessage);
}
