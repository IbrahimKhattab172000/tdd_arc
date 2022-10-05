import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_arc/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRespositoy {}

void main() {
  MockNumberTriviaRepository? mockNumberTriviaRepository;
  GetConcreteNumberTrivia? usecase;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository!);
  });
  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "text", number: 1);

  test(
    "Should get trivia for the number from the repository",
    () async {
      //arrange
      when(mockNumberTriviaRepository!.getConcreteNumberTrivia(1))
          .thenAnswer((_) async => Right(tNumberTrivia));
      //act
      final result = await usecase!.execute(number: tNumber);
      //assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberTriviaRepository!.getConcreteNumberTrivia(tNumber));
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
