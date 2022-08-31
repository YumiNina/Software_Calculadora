import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    @override
    Stream<CalculatorState> mapEventToState(
      CalculatorEvent event,
    ) async* {
      if (event is ResetAC) {
        yield CalculatorState(
            oneNumber: '0', mathResult: '0', twoNumber: '0', operation: 'none');
      }
    }
  }
}
