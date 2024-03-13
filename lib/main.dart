import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
            appBar: AppBar(
              backgroundColor: Colors.red.shade400,
              title: Text('Dicee',
              ),
            ),
            body: DiceePage (),
      ),
  ),);
}
class DiceePage extends StatefulWidget {
  const DiceePage({super.key});

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
  int leftDiceeNumber= 1;
  int rightDiceeNumber= 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
                onPressed: () {
                 setState(() {
                   leftDiceeNumber = Random().nextInt(6) + 1;
                 });
                },
                child: Image.asset('images/dice$leftDiceeNumber.png')
            ),
          ),

          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  rightDiceeNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceeNumber`git status.png'),
            ),
          ),
        ],
      ),
    );
  }
}



