// ignore_for_file: unused_element

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState());
  @override
  Stream<CalculatorState> mapEventToState(
    CalculatorEvent event,
  ) async* {
    if (event is ResetAC) {
      yield* this._resetAC();
    } else if (event is AddNumber) {
      yield state.copyWith(
        mathResult: (state.mathResult == '0')
            ? event.number
            : state.mathResult + event.number,
      );
    } else if (event is ChangeNegativePositive) {
      yield state.copyWith(
          mathResult: state.mathResult.contains('-')
              ? state.mathResult.replaceFirst('-', '')
              : '-' + state.mathResult);
      //se borrara el ultimo digito
    } else if (event is DelateLastEntry) {
      yield state.copyWith(
          mathResult: state.mathResult.length > 1
              ? state.mathResult.substring(0, state.mathResult.length - 1)
              : '0');
    }
  }

  Stream<CalculatorState> _resetAC() async* {
    yield CalculatorState(
        oneNumber: '0', mathResult: '0', twoNumber: '0', operation: 'none');
  }
}
