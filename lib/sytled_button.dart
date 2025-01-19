import 'package:flutter/material.dart';

class SytledButton extends StatelessWidget {
  const SytledButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: Colors.brown[900],
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)))),
      onPressed: onPressed,
      child: child,
    );
  }
}
