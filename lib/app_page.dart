import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:calcify/widgets/number_button_widget.dart';
import 'package:calcify/widgets/operator_button_widget.dart';
import 'package:calcify/widgets/equals_button_widget.dart';
import 'package:calcify/widgets/clear_button_widget.dart';
import 'functionality.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  String userInput = '';
  String outputString = '0';
  static double operand1 = 0.0, operand2 = 0.0;
  static String operatorChoice = '';
  bool isOperand1Assigned = false;
  bool isUserInputReseted = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 5.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.grey[800],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          userInput,
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white54,
                          ),
                        ),
                        Text(
                          outputString,
                          style: TextStyle(
                            fontSize: 70.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black45,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.plus,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                isOperand1Assigned = true;
                                userInput = '';
                                operatorChoice = '+';
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.minus,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                isOperand1Assigned = true;
                                userInput = '';
                                operatorChoice = '-';
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.times,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                isOperand1Assigned = true;
                                userInput = '';
                                operatorChoice = 'x';
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.divide,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                isOperand1Assigned = true;
                                userInput = '';
                                operatorChoice = '/';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          NumberButtonWidget(
                            label: '1',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '1';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '2',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '2';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '3',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '3';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          NumberButtonWidget(
                            label: '4',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '4';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '5',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '5';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '6',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '6';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          NumberButtonWidget(
                            label: '7',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '7';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '8',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '8';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '9',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '9';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ClearButtonWidget(
                            label: 'C',
                            buttonColor: Colors.redAccent,
                            clearFunction: () {
                              setState(() {
                                operand1 = 0.0;
                                operand2 = 0.0;
                                operatorChoice = '';
                                userInput = '';
                                outputString = '0';
                                print('num1=$operand1 num2=$operand2');
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '0',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                if (!isUserInputReseted) {
                                  userInput = '';
                                  isUserInputReseted = true;
                                }
                                userInput += '0';
                                if (!isOperand1Assigned) {
                                  operand1 = double.parse(userInput);
                                } else {
                                  operand2 = double.parse(userInput);
                                }
                              });
                            },
                          ),
                          EqualsButtonWidget(
                            operator: FontAwesomeIcons.equals,
                            buttonColor: Colors.redAccent,
                            calculationFunction: () {
                              setState(() {
                                userInput =
                                    '$operand1 $operatorChoice $operand2';
                                Functionality functionality = Functionality(
                                    operand1: operand1,
                                    operand2: operand2,
                                    operator: operatorChoice);
                                double result =
                                    functionality.calculateFunction();
                                print('result= $result');
                                outputString = result.toString();
                                isOperand1Assigned = false;
                                isUserInputReseted = false;
                                result = 0.0;
                                operand1 = 0.0;
                                operand2 = 0.0;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}
