import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd_number_trivia/model/failures.dart';
import 'package:flutter_tdd_number_trivia/model/number_trivia.dart';
import 'package:flutter_tdd_number_trivia/service/number_trivia_service.dart';

class NumberTriviaProvider with ChangeNotifier{
final NumberTriviaService _numberTriviaService;

NumberTriviaProvider(this._numberTriviaService);

Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number)=>
  _numberTriviaService.getConcreteNumberTrivia(number);


}