import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:zen_url_ui/home/model/link_information.dart';

class HoverableRow extends StatefulWidget {
  final LinkInformation link;
  const HoverableRow({super.key, required this.link});

  @override
  State<StatefulWidget> createState() {
    return _HoverableLink();
  }
}

class _HoverableLink extends State<HoverableRow> {
  bool _isHovered = false;

  void _copyToClipboard(link) async {
    await Clipboard.setData(ClipboardData(text: link.shortUrl));

    Fluttertoast.showToast(
      msg: "Copied to Clipboard ..",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black38,
      textColor: Colors.white,
      fontSize: 16,
    );
  }

  @override
  Widget build(BuildContext context) {
    final link = widget.link;
    final textStyle = TextStyle(
      fontFamily: 'Quicksand',
      color: _isHovered ? const Color.fromRGBO(218, 255, 1, 1) : Color.fromRGBO(255, 255, 255, 1),
    );
    final hoverColor =
        _isHovered ? Color.fromRGBO(92, 43, 105, 1) : Color.fromRGBO(63, 63, 63, 0.2);
    final hoverColorOpposite =
        _isHovered ? const Color.fromRGBO(218, 255, 1, 1) : Color.fromRGBO(255, 255, 255, 1);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: SizedBox(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          height: 70,
          // color: ,
          decoration: BoxDecoration(
            color: Color.fromRGBO(63, 63, 63, 0.2),
            border: Border.all(color: hoverColor),
          ),
          // color: hoverColor,
          child: Row(
            children: [
              // Short URL
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Flexible(
                      child: Text(link.shortUrl, style: textStyle, overflow: TextOverflow.ellipsis),
                    ),
                    // Copy Icon
                    IconButton(
                      onPressed: () => _copyToClipboard(link),
                      icon: Icon(Icons.copy),
                      color: hoverColorOpposite,
                      padding: EdgeInsets.zero,
                    ),

                    // Share Icon
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.open_in_new),
                      color: hoverColorOpposite,
                      padding: EdgeInsets.zero,
                    ),
                  ],
                ),
              ),

              // Long URL
              Expanded(
                flex: 3,
                child: Text(
                  link.longUrl,
                  style: textStyle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),

              // QR
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,

                  child: Icon(Icons.qr_code, color: hoverColorOpposite),
                ),
              ),

              // Click
              Expanded(flex: 1, child: Text(link.clicks.toString(), style: textStyle)),

              // Status
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    link.status ? Icons.check_circle : Icons.cancel,
                    color: link.status ? hoverColorOpposite : Colors.black,
                  ),
                ),
              ),

              // Date
              Expanded(
                flex: 2,
                child: Text(
                  '${link.date.day}/${link.date.month}/${link.date.year}',
                  style: textStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
