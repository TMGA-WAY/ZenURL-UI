import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Shorten Your Looooong Links",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "ZenUrl is an efficient and easy to use URL shortening service.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
