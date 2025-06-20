import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/zenurl_home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'ZenURL',
      theme: ThemeData(
        fontFamily: "Quicksand",

        scaffoldBackgroundColor: const Color.fromRGBO(17, 17, 19, 1),

        textTheme: ThemeData().textTheme.copyWith(
          bodyLarge: TextStyle(color: Color(0xffffffff), fontWeight: FontWeight.bold),
        ),
      ),
      home: ZenURL(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
