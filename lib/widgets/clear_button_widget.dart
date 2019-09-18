import 'package:flutter/material.dart';

class ClearButtonWidget extends StatelessWidget {
  final String label;
  final Color buttonColor;
  final Function clearFunction;

  ClearButtonWidget(
      {@required this.label, this.buttonColor, this.clearFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FlatButton(
          onPressed: clearFunction,
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
