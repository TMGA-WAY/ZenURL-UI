import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/heading/main_heading.dart';
import 'package:zen_url_ui/home/input_area.dart';
import 'package:zen_url_ui/home/navigation_bar/nav_bar.dart';

class ZenURL extends StatefulWidget {
  const ZenURL({super.key});

  @override
  State<ZenURL> createState() {
    return _ZenURLState();
  }
}

class _ZenURLState extends State<ZenURL> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(children: [MainHeading(), SizedBox(height: 20), InputArea()]),
      ),
    );
  }
}
