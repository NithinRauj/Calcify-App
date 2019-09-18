import 'package:flutter/material.dart';

class EqualsButtonWidget extends StatelessWidget {
  final IconData operator;
  final Color buttonColor;
  final Function calculationFunction;

  EqualsButtonWidget(
      {@required this.operator, this.buttonColor, this.calculationFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FlatButton(
          onPressed: calculationFunction,
          color: buttonColor,
          child: Container(
            width: 55.0,
            height: 55.0,
            child: Icon(
              operator,
              size: 35.0,
            ),
          ),
        ),
      ),
    );
  }
}
