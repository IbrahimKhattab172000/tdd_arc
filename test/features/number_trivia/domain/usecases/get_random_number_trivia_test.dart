import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:tdd_arc/core/usecases/usecases.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:tdd_arc/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_arc/features/number_trivia/domain/usecases/get_random_number_trivia.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRespositoy {}

void main() {
  MockNumberTriviaRepository? mockNumberTriviaRepository;
  GetRandomNumberTrivia? usecase;
  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(respositoy: mockNumberTriviaRepository!);
  });
  final tNumberTrivia = NumberTrivia(text: "text", number: 1);

  test(
    "Should get trivia from the repository",
    () async {
      //*arrange
      when(mockNumberTriviaRepository!.getRandomNumberTrivia())
          .thenAnswer((_) async => Right(tNumberTrivia));

      //*act

      final result = await usecase!.call(NoParams());
      //usecase = usecase.call
      ////final result = await usecase!();

      //*assert
      expect(result, Right(tNumberTrivia));
      verify(mockNumberTriviaRepository!.getRandomNumberTrivia());
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}
