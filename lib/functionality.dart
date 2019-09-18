class Functionality {
  final double operand1;
  final double operand2;
  final String operator;

  Functionality({this.operand1, this.operand2, this.operator});

  double calculateFunction() {
    double result;
    if (operator == '+') {
      result = operand1 + operand2;
      return result;
    } else if (operator == '-') {
      result = operand1 - operand2;
      return result;
    } else if (operator == '*') {
      result = operand1 * operand2;
      return result;
    } else if (operator == '/') {
      result = operand1 / operand2;
      return result;
    } else
      return 0.0;
  }
}
