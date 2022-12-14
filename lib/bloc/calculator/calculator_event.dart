// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ResetAC extends CalculatorEvent {}

class AddNumber extends CalculatorEvent {
  final String number;
  AddNumber(this.number);
}

class ChangeNegativePositive extends CalculatorEvent {}

class DelateLastEntry extends CalculatorEvent {}

class OperationEntry extends CalculatorEvent {
  final String operation;

  OperationEntry(this.operation);
}

class CalculateResult extends CalculatorEvent {}
