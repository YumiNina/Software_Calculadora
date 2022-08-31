// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String oneNumber;
  final String twoNumber;
  final String operation;

  CalculatorState({
    this.mathResult = '30',
    this.oneNumber = '10',
    this.twoNumber = '20',
    this.operation = '+',
  });
}
