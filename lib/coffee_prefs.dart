import 'package:coffee_card/styled_body_text.dart';
import 'package:coffee_card/sytled_button.dart';
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            StyledBodyText('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/img/coffee_bean (1).png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(
              child: SizedBox(),
            ),
            SytledButton(
              onPressed: increaseStrength,
              child: const Text('+'),
            )
          ],
        ),
        Row(
          children: [
            StyledBodyText('Sugars: '),
            if (sugars == 0) const Text("Zero sugar"),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            Expanded(
              child: SizedBox(),
            ),
            SytledButton(
              onPressed: increaseSugar,
              child: const Text('+'),
            )
          ],
        )
      ],
    );
  }
}
