import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/heading/main_heading.dart';
import 'package:zen_url_ui/home/input_area_widget.dart';
import 'package:zen_url_ui/home/link_table/link_table_widget.dart';
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
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      MainHeading(),
                      SizedBox(height: 40),
                      InputArea(),
                      SizedBox(height: 40),
                      LinkTable(),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
