import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  TableHeader({super.key});

  final headerTextStyle = TextStyle(color: const Color(0xffECE9E1), fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50, left: 80, right: 80),
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.zero),
          color: const Color(0xffE43C13),
          boxShadow: [BoxShadow(color: Color(0xff353C4A), spreadRadius: 1)],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Short URL", style: headerTextStyle),
            ),
            Spacer(),
            Text("Original URL", style: headerTextStyle),
            Spacer(flex: 3),
            Text("QR", style: headerTextStyle),
            Spacer(flex: 1),
            Text("Clicks", style: headerTextStyle),
            Spacer(flex: 1),
            Text("Status", style: headerTextStyle),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Text("Date", style: headerTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
