import 'package:flutter/material.dart';

class NumberButtonWidget extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Function displayOperandFunction;

  NumberButtonWidget(
      {@required this.label, this.buttonColor, this.displayOperandFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          onPressed: displayOperandFunction,
          color: buttonColor,
          child: Text(
            label,
            style: TextStyle(
              fontSize: 40.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
