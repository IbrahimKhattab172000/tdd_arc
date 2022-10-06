import 'package:dartz/dartz.dart';
import 'package:tdd_arc/core/errors/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failures, Type>?> call(Params? params);
}
