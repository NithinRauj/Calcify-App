import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  String userInput = '';
  int num1 = 0, num2 = 0;
  String operator = '';

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
                          '0',
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
                                num1 = int.parse(userInput);
                                userInput = '$num1 +';
                                operator = '+';
                                print('num1= $num1');
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.minus,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                num1 = int.parse(userInput);
                                userInput = '$num1 -';
                                operator = '-';
                                print('num1= $num1');
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.times,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                num1 = int.parse(userInput);
                                userInput = '$num1 x';
                                operator = 'x';
                                print('num1= $num1');
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.divide,
                            buttonColor: Colors.grey[800],
                            defineOperationFunction: () {
                              setState(() {
                                num1 = int.parse(userInput);
                                userInput = '$num1 /';
                                operator = '/';
                                print('num1= $num1');
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
                                userInput += '1';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '2',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '2';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '3',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '3';
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
                                userInput += '4';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '5',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '5';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '6',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '6';
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
                                userInput += '7';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '8',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '8';
                              });
                            },
                          ),
                          NumberButtonWidget(
                            label: '9',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '9';
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.backspace,
                            buttonColor: Colors.grey[800],
                          ),
                          NumberButtonWidget(
                            label: '0',
                            buttonColor: Colors.grey[900],
                            displayOperandFunction: () {
                              setState(() {
                                userInput += '0';
                              });
                            },
                          ),
                          OperatorButtonWidget(
                            operator: FontAwesomeIcons.equals,
                            buttonColor: Colors.redAccent,
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
