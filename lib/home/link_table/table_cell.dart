import 'package:flutter/material.dart';

class TableCellWidget extends StatelessWidget {
  final String text;
  final TextStyle style;
  const TableCellWidget({super.key, required this.text, required this.style});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(8.0), child: Text(text, style: style));
  }
}
