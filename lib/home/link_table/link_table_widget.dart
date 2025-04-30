import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/link_table/link_information.dart';
import 'package:zen_url_ui/home/link_table/table_header_widget.dart';

class LinkTable extends StatefulWidget {
  const LinkTable({super.key});

  @override
  State<LinkTable> createState() {
    return _LinkTable();
  }
}

class _LinkTable extends State<LinkTable> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [TableHeader(), LinkInformation()]);
  }
}
