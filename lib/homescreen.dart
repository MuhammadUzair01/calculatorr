import 'package:flutter/material.dart';
import 'package:calculatorr/components/mybutton.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    
                    Align(
                      alignment:Alignment.bottomRight,
                      child: Text(
                        userInput.toString(),
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      answer.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      mybutton(
                        txt: 'AC',
                        colr: Colors.grey,
                        onPress: () {
                          userInput='';
                          answer='';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '^',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='^';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '%',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='%';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '/',
                        onPress: () {
                          userInput+='/';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      mybutton(
                        txt: '7',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='7';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '8',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='8';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '9',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='9';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: 'x',
                        onPress: () {
                          userInput+='x';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      mybutton(
                        txt: '4',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='4';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '5',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='5';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '6',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='6';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '-',
                        onPress: () {
                          userInput+='-';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      mybutton(
                        txt: '1',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='1';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '2',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='2';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '3',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='3';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '+',
                        onPress: () {
                          userInput+='+';
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      mybutton(
                        txt: '0',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='0';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '.',
                        colr: Colors.grey,
                        onPress: () {
                          userInput+='.';
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: 'DEL',
                        colr: Colors.grey,
                        onPress: () {
                          userInput=userInput.substring(0,userInput.length-1);
                          setState(() {

                          });
                        },
                      ),
                      mybutton(
                        txt: '=',
                        onPress: () {
                          equalpress();
                          setState(() {

                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void equalpress(){

    String finalUserInput=userInput;
    finalUserInput=userInput.replaceAll('x', '*');
    Parser p=Parser();
    Expression expression=p.parse(finalUserInput);
    ContextModel contextmodel =ContextModel();

    double eval=expression.evaluate(EvaluationType.REAL, contextmodel);

    answer=eval.toString();
  }
}

