import 'package:flutter/material.dart';
import 'package:zen_url_ui/home/zenurl_home.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'ZenURL',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffECE9E1),
        fontFamily: "QuickSand",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color:  Color(0xffE43C13)),
          bodyMedium: TextStyle(color:  Color(0xffE43C13)),
          bodySmall: TextStyle(color:  Color(0xffE43C13))
        )

        
      ),
      home: ZenURL(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
