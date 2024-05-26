// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.text, required this.onPressed});
  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
      color: Theme.of(context).colorScheme.primary,
    );
  }
}
