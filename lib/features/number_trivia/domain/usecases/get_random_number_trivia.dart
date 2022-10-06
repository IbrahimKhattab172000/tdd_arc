// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:tdd_arc/core/errors/failures.dart';
import 'package:tdd_arc/core/usecases/usecases.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  NumberTriviaRespositoy respositoy;
  GetRandomNumberTrivia({
    required this.respositoy,
  });

  @override
  Future<Either<Failures, NumberTrivia>?> call(NoParams? params) async {
    return await respositoy.getRandomNumberTrivia();
  }
}
