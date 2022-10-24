import 'package:flutter/material.dart';
import 'package:flutter_task/screens/home/components/app_header.dart';
import 'package:flutter_task/screens/home/components/membership/membership.dart';
import 'package:flutter_task/screens/home/components/spa/spa.dart';
import 'components/facilities/facilities.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, kTextTabBarHeight, 8, 8),
          child: Column(
            children: [
              const AppHeader(),
              const Membership(),
              Facilities(),
              const Spa(),
            ],
          ),
        ),
      ),
    );
  }
}
