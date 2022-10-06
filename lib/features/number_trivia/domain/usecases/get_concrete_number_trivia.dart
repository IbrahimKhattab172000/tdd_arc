import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetConcreteNumberTrivia implements UseCase<NumberTrivia, Params> {
  final NumberTriviaRespositoy respositoy;

  GetConcreteNumberTrivia(this.respositoy);

  @override
  Future<Either<Failures, NumberTrivia>?> call(Params? params) async {
    return await respositoy.getConcreteNumberTrivia(params!.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params(this.number);
  @override
  List<Object?> get props => [number];
}
