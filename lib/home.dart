import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Coffee',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.brown[800],
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                color: Colors.brown[200],
                padding: const EdgeInsets.all(20),
                child: const Text('This is how I like my coffee...')),
            Container(
                color: Colors.brown[100],
                padding: const EdgeInsets.all(20),
                child: const Text('Coffee prefrences: ')),
          ],
        ));
  }
}
