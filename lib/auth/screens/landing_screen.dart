import 'package:flutter/material.dart';
import 'package:job_asignment_1_ovesh/core/theme/colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Welcome to \n Job portal",
          style: TextStyle(
              fontSize: 30,
              color: AppPalate.black,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
