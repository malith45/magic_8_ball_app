import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent[100],
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
                child: Text('Ask Me Anything ?',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: Colors.white)))),
        body: const BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int num = 1;

  void changeAns() {
    setState(() {
      num = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () {
                changeAns();
                debugPrint('Ball pressed.');
              },
              child: Image.asset('images/ball$num.png'),
            ),
          ),
        ),
      ],
    );
  }
}
