import 'package:tdd_arc/core/plateform/network_info.dart';
import 'package:tdd_arc/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:tdd_arc/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_arc/core/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRespositoy {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failures, NumberTrivia>>? getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, NumberTrivia>>? getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
