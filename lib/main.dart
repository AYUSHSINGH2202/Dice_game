import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.lightBlueAccent,
            appBar: AppBar(
              title: Center (
                child: Text('Dice'),
              ),
              backgroundColor: Colors.redAccent,
          ),
          body: Dicepage(),
        ),
      ),
      );
}

class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);
  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftdicenumber=1;
  int rightdicenumber=1;

  void changediceface()
  {
    setState(() {
      leftdicenumber=Random().nextInt(6)+1;
      rightdicenumber=Random().nextInt(6)+1;
      //print('left dice number is = $leftdicenumber');
    });
  }
  @override
  Widget build(BuildContext context) {
    {
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  changediceface();
                },
                child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  changediceface();
                },
                child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
          ],
        ),
      );
    }
  }
}

