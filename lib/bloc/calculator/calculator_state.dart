// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_bloc.dart';

class CalculatorState {
  final String mathResult;
  final String oneNumber;
  final String twoNumber;
  final String operation;

  CalculatorState({
    this.mathResult = '0',
    this.oneNumber = '0',
    this.twoNumber = '0',
    this.operation = ' ',
  });
  CalculatorState copyWith({
    String? mathResult,
    String? oneNumber,
    String? twoNumber,
    String? operation,
  }) =>
      CalculatorState(
        mathResult: mathResult ?? this.mathResult,
        oneNumber: oneNumber ?? this.oneNumber,
        twoNumber: twoNumber ?? this.twoNumber,
        operation: operation ?? this.operation,
      );
}
