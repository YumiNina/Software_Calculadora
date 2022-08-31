import 'package:calculadora/bloc/calculator_bloc.dart';
import 'package:calculadora/bloc/calculator_bloc.dart';
import 'package:calculadora/bloc/calculator_bloc.dart';

import 'package:calculadora/widgets/results_labels.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculator_bloc.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CalculatorBloc = BlocProvider.of<CalculatorBloc>(context);

    return Scaffold(
        body: SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            ResultsLabels(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: 'AC',
                  bgColor: Color.fromARGB(255, 67, 184, 231),
                  onPressed: () => CalculatorBloc.add(ResetAC()),
                ),
                CalculatorButton(
                  text: '+/-',
                  bgColor: Color.fromARGB(255, 67, 184, 231),
                  onPressed: () => print('+/-'),
                ),
                CalculatorButton(
                  text: 'del',
                  bgColor: Color.fromARGB(255, 67, 184, 231),
                  onPressed: () => print('del'),
                ),
                CalculatorButton(
                  text: '/',
                  bgColor: Color.fromARGB(255, 244, 81, 189),
                  onPressed: () => print('/'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '7',
                  onPressed: () => CalculatorBloc.add(AddNumber('7')),
                ),
                CalculatorButton(
                  text: '8',
                  onPressed: () => CalculatorBloc.add(AddNumber('8')),
                ),
                CalculatorButton(
                  text: '9',
                  onPressed: () => CalculatorBloc.add(AddNumber('9')),
                ),
                CalculatorButton(
                  text: 'X',
                  bgColor: Color.fromARGB(255, 244, 81, 189),
                  onPressed: () => print('X'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '4',
                  onPressed: () => CalculatorBloc.add(AddNumber('4')),
                ),
                CalculatorButton(
                  text: '5',
                  onPressed: () => CalculatorBloc.add(AddNumber('5')),
                ),
                CalculatorButton(
                  text: '6',
                  onPressed: () => CalculatorBloc.add(AddNumber('6')),
                ),
                CalculatorButton(
                  text: '-',
                  bgColor: Color.fromARGB(255, 244, 81, 189),
                  onPressed: () => print('-'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '1',
                  onPressed: () => CalculatorBloc.add(AddNumber('1')),
                ),
                CalculatorButton(
                  text: '2',
                  onPressed: () => CalculatorBloc.add(AddNumber('2')),
                ),
                CalculatorButton(
                  text: '3',
                  onPressed: () => CalculatorBloc.add(AddNumber('3')),
                ),
                CalculatorButton(
                  text: '+',
                  bgColor: Color.fromARGB(255, 244, 81, 189),
                  onPressed: () => print('+'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CalculatorButton(
                  text: '0',
                  big: true,
                  onPressed: () => print('0'),
                ),
                CalculatorButton(
                  text: '.',
                  onPressed: () => print('.'),
                ),
                CalculatorButton(
                  text: '=',
                  bgColor: Color.fromARGB(255, 218, 39, 39),
                  onPressed: () => print('='),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
