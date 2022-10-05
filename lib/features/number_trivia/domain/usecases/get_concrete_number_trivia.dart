import 'package:dartz/dartz.dart';
import 'package:tdd_arc/core/errors/failures.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRespositoy respositoy;

  GetConcreteNumberTrivia(this.respositoy);

  Future<Either<Failures, NumberTrivia>?> execute({required int number}) async {
    return await respositoy.getConcreteNumberTrivia(number);
  }
}
