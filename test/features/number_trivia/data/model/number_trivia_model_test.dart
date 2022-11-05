import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_arc/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:tdd_arc/features/number_trivia/domain/entities/number_trivia.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: "Text test");
  test(
    "Should be a subclass of NumberTrivia entity",
    () {
      //arrange
      //*There's nothing to be arranged we already have the number tNumberTriviaModel
      //act
      //*There's nothing to be acted upon
      //assert
      expect(tNumberTriviaModel, isA<NumberTrivia>());
    },
  );
  group(
    "fromJson",
    () {
      test(
        "Should return a valid model when the JSON number is integer",
        () {
          //arrange
          final Map<String, dynamic> jsonMap =
              jsonDecode(fixture('trivia.json'));
          //act
          final result = NumberTriviaModel.fromJson(jsonMap);
          //assert
          expect(result, tNumberTriviaModel);
        },
      );
      test(
        "Should return a valid model when the JSON number when regarded as a double",
        () {
          //arrange
          final Map<String, dynamic> jsonMap =
              jsonDecode(fixture('trivia_double.json'));
          //act
          final result = NumberTriviaModel.fromJson(jsonMap);
          //assert
          expect(result, tNumberTriviaModel);
        },
      );
    },
  );
  group(
    "toJson",
    () {
      test(
        "Should return a JSON map containing the proper data",
        () {
          //arrange
          final expectedMap = {
            "text": "Text test",
            "number": 1,
          };
          //act
          final result = tNumberTriviaModel.toJson();
          //assert
          expect(result, expectedMap);
        },
      );
    },
  );
}
