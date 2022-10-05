import 'package:dartz/dartz.dart';
import 'package:tdd_arc/core/errors/failures.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';

abstract class NumberTriviaRespositoy {
  Future<Either<Failures, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failures, NumberTrivia>> getRandomNumberTrivia();
}
