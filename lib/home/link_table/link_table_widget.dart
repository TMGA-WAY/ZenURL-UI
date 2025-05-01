import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/link_table/link_row_widget.dart';
import 'package:zen_url_ui/home/link_table/table_cell.dart';
import 'package:zen_url_ui/home/model/link_information.dart';

class LinkTable extends StatefulWidget {
  const LinkTable({super.key});

  @override
  State<LinkTable> createState() {
    return _LinkTable();
  }
}

class _LinkTable extends State<LinkTable> {
  final headerTextStyle = TextStyle(color: const Color(0xffECE9E1), fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),

      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),

        child: Table(
          border: TableBorder.symmetric(),

          columnWidths: const {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(1),
            3: FlexColumnWidth(1),
            4: FlexColumnWidth(1),
            5: FlexColumnWidth(2),
          },
          children: [
            TableRow(
              decoration: const BoxDecoration(color: Color(0xffE43C13)),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: TableCellWidget(text: "Short Url", style: headerTextStyle),
                ),
                TableCellWidget(text: "Original Url", style: headerTextStyle),
                TableCellWidget(text: "QR", style: headerTextStyle),
                TableCellWidget(text: "Click", style: headerTextStyle),
                TableCellWidget(text: "Status", style: headerTextStyle),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: TableCellWidget(text: "Date", style: headerTextStyle),
                ),
              ],
            ),
            LinkRowWidget.build(
              LinkInformation(
                shortUrl: "https://zenurl/zhbashs",
                longUrl: "https://chatgpt.com/c/68135c00-6cd73d713fc2",
                qr: "QR",
                clicks: 12321,
                status: true,
                date: DateTime(2025, 03, 23),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
