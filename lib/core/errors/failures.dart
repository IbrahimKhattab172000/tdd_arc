// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

abstract class Failures extends Equatable {
  Failures([List properties = const <dynamic>[]]) : super();
}

//general failures
class ServerFailures extends Failures {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class CacheFailures extends Failures {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
