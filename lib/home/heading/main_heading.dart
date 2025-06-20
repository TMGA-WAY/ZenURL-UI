import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SelectableText(
            "Shorten Your Looooong Links",
            style: TextStyle(fontFamily: 'Quicksand',fontSize: 36, fontWeight: FontWeight.bold, color: const Color.fromRGBO(255, 255, 255, 1)),
          ),
        ),
        Center(
          child: SelectableText(
            "ZenUrl is an efficient and easy to use URL shortening service.",
            style: TextStyle(
              fontFamily: 'Quicksand'
              ,fontSize: 14, fontWeight: FontWeight.bold, color: const Color.fromRGBO(161, 161, 170, 1)),
          ),
        ),
      ],
    );
  }
}
