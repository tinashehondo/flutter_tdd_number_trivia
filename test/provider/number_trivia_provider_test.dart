import 'package:dartz/dartz.dart';
import 'package:flutter_tdd_number_trivia/model/number_trivia.dart';
import 'package:flutter_tdd_number_trivia/provider/number_trivia_provider.dart';
import 'package:flutter_tdd_number_trivia/service/number_trivia_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaService extends Mock
    implements NumberTriviaService {}


void main() {
  NumberTriviaProvider numberTriviaProvider;
  MockNumberTriviaService mockNumberTriviaService;

  setUp(() {
    mockNumberTriviaService = MockNumberTriviaService();
    numberTriviaProvider=NumberTriviaProvider(mockNumberTriviaService);
  });




  group('getConcreteNumberTrivia', ()
  {
    final tNumber = 1;
    final tNumberTriviaModel =
    NumberTrivia(number: tNumber, text: 'test trivia');
    //final NumberTrivia tNumberTrivia = tNumberTriviaModel;

    test(
      'should call number trivia service',
          () async {
        // arrange
        when(mockNumberTriviaService.getConcreteNumberTrivia(any))
            .thenAnswer((_) async => Right(tNumberTriviaModel));
        // act
        final result = await numberTriviaProvider.getConcreteNumberTrivia(tNumber);
        // assert
        verify(mockNumberTriviaService.getConcreteNumberTrivia(tNumber));
        expect(result, equals(Right(tNumberTriviaModel)));
      },
    );
  });
}