import 'package:flutter/material.dart';

class TitleLine extends StatelessWidget {
  const TitleLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 18,
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
