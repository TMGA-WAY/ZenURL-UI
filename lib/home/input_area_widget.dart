import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    final double inputAreaheight = 50;
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth > 750 ? 700 : screenWidth * 0.9;

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      // child: Center(
      child: Container(
        width: containerWidth,
        height: inputAreaheight,
        padding: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromRGBO(127, 74, 142, 1),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(92, 43, 105, 0.6),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),

        child: Row(
          children: [
            // Link Logo
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Image.asset(
                'assets/images/link-building.png',
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 15),
            // Input Text
            Expanded(
              child: TextField(
                style: const TextStyle(color: Color(0xffECE9E1)),
                decoration: const InputDecoration(
                  hintText: "Enter Your Long Links",
                  hintStyle: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Quicksand',
                  ),

                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 10),

            Padding(
              padding: const EdgeInsets.only(right: 3),
              child: SizedBox(
                width: 150,

                height: inputAreaheight - 5,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                  ),
                  child: Text(
                    "Shorten Now",
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: const Color.fromRGBO(17, 17, 19, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
