import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        height: 80,
        width: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color(0xffE43C13),
          boxShadow: [BoxShadow(color: Color(0xff353C4A), spreadRadius: 3)],
        ),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Image.asset(
                'assets/images/link-building.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 15),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Long Links",
                  hintStyle: TextStyle(color: const Color(0xffECE9E1)),

                  border: InputBorder.none,
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: SizedBox(
                height: double.infinity,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Shorten Now",
                    style: TextStyle(color: const Color(0xffE43C13), fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
