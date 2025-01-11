import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;

  int sugars = 0;

  void increaseStrength() {
    setState(() {
      strength = (strength < 5) ? (strength + 1) : (1);
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = (sugars < 5) ? (sugars + 1) : (0);
    });
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('Strength: '),
            Text('$strength'),
            Image.asset(
              'assets/img/coffee_bean (1).png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseStrength,
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            Text('Sugars: '),
            Text('$sugars'),
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            Expanded(
              child: SizedBox(),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
              ),
              onPressed: increaseSugar,
              child: const Text('+'),
            )
          ],
        )
      ],
    );
  }
}
