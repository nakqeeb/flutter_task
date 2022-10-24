import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home/components/spa/spa_tile.dart';

import '../title_line.dart';

class Spa extends StatelessWidget {
  const Spa({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Spa',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const TitleLine(),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (_, index) => const Padding(
            padding: EdgeInsets.all(8.0),
            child: SpaTile(),
          ),
          separatorBuilder: (_, index) => const Divider(),
        ),
      ],
    );
  }
}
