import 'package:flutter/material.dart';

class OperatorButtonWidget extends StatelessWidget {
  final IconData operator;
  final Color buttonColor;
  final Function defineOperationFunction;

  OperatorButtonWidget(
      {@required this.operator,
      this.buttonColor,
      this.defineOperationFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FlatButton(
          onPressed: defineOperationFunction,
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
