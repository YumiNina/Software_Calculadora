import 'package:calculadora/bloc/calculator/calculator_bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'line_separator.dart';
import 'main_result.dart';
import 'sub_result.dart';

class ResultsLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        if (state.oneNumber == '0' && state.twoNumber == '0') {
          return MainResultText(
              text: state.mathResult.endsWith('.0')
                  ? state.mathResult.substring(0, state.mathResult.length - 2)
                  : state.mathResult);
        }
        return Column(
          children: [
            SubResult(text: state.oneNumber),
            SubResult(text: state.operation),
            SubResult(
                text: state.twoNumber.endsWith('.0')
                    ? state.twoNumber.substring(0, state.twoNumber.length - 2)
                    : state.twoNumber),
            LineSeparator(),
            MainResultText(
                text: state.mathResult.endsWith('.0')
                    ? state.mathResult.substring(0, state.mathResult.length - 2)
                    : state.mathResult),
          ],
        );
      },
    );
  }
}
