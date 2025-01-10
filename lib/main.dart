import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: const Home()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Width vs height here test it out
          Container(
            height: 100,
            color: Colors.red,
            child: const Text('1'),
          ),
          Container(
            height: 200,
            color: Colors.green,
            child: const Text('2'),
          ),
          Container(
            height: 300,
            color: Colors.blue,
            child: const Text('3'),
          ),
        ],
      ),
    );
  }
}
