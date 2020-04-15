import 'package:dartz/dartz.dart';
import '../model/failures.dart';
import '../model/number_trivia.dart';

abstract class NumberTriviaService {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
