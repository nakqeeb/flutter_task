import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home/components/facilities/facility_card.dart';
import 'package:flutter_task/screens/home/components/title_line.dart';

class Facilities extends StatelessWidget {
  Facilities({super.key});

  final List data = [
    {
      'title': 'Spa',
      'imagePath': 'assets/images/spa.jpeg',
    },
    {
      'title': 'Pool',
      'imagePath': 'assets/images/pool.jpeg',
    },
    {
      'title': 'Lorem',
      'imagePath': 'assets/images/lorem.jpg',
    },
    {
      'title': 'Mindfulness',
      'imagePath': 'assets/images/mindfulness.jpeg',
    },
    {
      'title': 'Crossfit',
      'imagePath': 'assets/images/crossfit.jpeg',
    },
    {
      'title': 'Events',
      'imagePath': 'assets/images/events.jpeg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Facilities',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        const TitleLine(),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 270,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              padding: EdgeInsets.zero,
              itemCount: data.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (_, index) => FacilityCard(
                    imagePath: data[index]['imagePath'],
                    title: data[index]['title'],
                  )),
        )
      ],
    );
  }
}
