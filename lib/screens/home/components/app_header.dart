import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home/components/title_line.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
            ),
            TitleLine(),
          ],
        ),
        TextButton(
            onPressed: () {},
            child: const Text(
              'Register Now',
              style: TextStyle(color: Colors.pinkAccent, fontSize: 16),
            ))
      ],
    );
  }
}
