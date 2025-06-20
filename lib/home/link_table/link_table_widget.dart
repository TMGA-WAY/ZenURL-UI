import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/link_table/hoverable_row.dart';
import 'package:zen_url_ui/home/model/link_information.dart';

class LinkTable extends StatefulWidget {
  const LinkTable({super.key});

  @override
  State<LinkTable> createState() {
    return _LinkTable();
  }
}

class _LinkTable extends State<LinkTable> {
  final headerTextStyle = TextStyle(
    fontFamily: 'Quicksand',
    color: const Color(0xffECE9E1),
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    final List<LinkInformation> links = List.generate(50, (index) {
      return LinkInformation(
        shortUrl: "https://zenurl/short$index",
        longUrl: "https://chatgpt.com/c/68135-$index-d713fc2",
        qr: "QR",
        clicks: 10000 + index * 10,
        status: index % 3  == 1 ? true:false,
        date: DateTime(2025, 03, 23).add(Duration(days: index)),
      );
    });

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(63, 63, 63, 0.2),
              border: Border.all(color: Color.fromRGBO(92, 43, 105, 1), width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            margin: EdgeInsets.only(bottom: 3),

            child: Row(
              children: [
                Expanded(flex: 2, child: Text("Short Url", style: headerTextStyle)),
                Expanded(flex: 3, child: Text("Long Url", style: headerTextStyle)),
                Expanded(flex: 1, child: Text("QR", style: headerTextStyle)),
                Expanded(flex: 1, child: Text("Clicks", style: headerTextStyle)),
                Expanded(flex: 1, child: Text("Status", style: headerTextStyle)),
                Expanded(flex: 2, child: Text("Date", style: headerTextStyle)),
              ],
            ),
          ),
          //  Wrap The Link List
          ...links.map((link) => HoverableRow(link: link)),
        ],
      ),
    );
  }
}
