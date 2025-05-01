import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/model/link_information.dart';

class LinkRowWidget {
  static TableRow build(LinkInformation link) {
    final textStyle = TextStyle(color: Color(0xffE43C13));
    return TableRow(
      children: [
        // Short Url
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 12, bottom: 12),
          child: Row(
            children: [
              const SizedBox(width: 8),
              Flexible(
                child: Text(link.shortUrl, style: textStyle, overflow: TextOverflow.ellipsis),
              ),
              // Copy Clipboard
              IconButton(
                onPressed: () {
                  // Logic for Copy to ClipBoard
                },
                icon: const Icon(Icons.copy),
                color: Color(0xffE43C13),
              ),
              // Share
              IconButton(
                onPressed: () {
                  // Logic for redirect
                },
                icon: const Icon(Icons.share),
                color: Color(0xffE43C13),
              ),
            ],
          ),
        ),

        // Long Url
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            children: [
              // const SizedBox(width: 8),
              Flexible(
                child: Text(link.longUrl, style: textStyle, overflow: TextOverflow.ellipsis),
              ),
            ],
          ),
        ),

        // QR
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.qr_code, color: Color(0xffE43C13)),
          ),
        ),

        // Clicks
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(link.clicks.toString(), style: textStyle),
          ),
        ),

        // Status
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Icon(
              link.status ? Icons.check_circle : Icons.cancel,
              color: link.status ? Color(0xffE43C13) : Colors.black,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(right: 16, top: 20),
          child: Text('${link.date.day}/${link.date.month}/${link.date.year}', style: textStyle),
        ),
      ],
    );
  }
}
