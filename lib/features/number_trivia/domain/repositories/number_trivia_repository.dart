import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/number_trivia.dart';

abstract class NumberTriviaRespositoy {
  Future<Either<Failures, NumberTrivia>>? getConcreteNumberTrivia(int number);
  Future<Either<Failures, NumberTrivia>>? getRandomNumberTrivia();
}
