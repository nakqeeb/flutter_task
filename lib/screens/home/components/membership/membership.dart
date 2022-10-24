import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home/components/membership/membership_card.dart';

class Membership extends StatelessWidget {
  const Membership({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Become a Member',
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: size.height * 0.21,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) => const MembershipCard(),
            ),
          )
        ],
      ),
    );
  }
}
