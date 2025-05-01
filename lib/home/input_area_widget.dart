import 'package:flutter/material.dart';

class InputArea extends StatelessWidget {
  const InputArea({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth > 750 ? 700 : screenWidth * 0.9;

    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Center(
        child: Container(
          // height: 80,
          width: containerWidth,
          padding: EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xffE43C13),
            boxShadow: [
              BoxShadow(
                color: Color(0xff353C4A).withOpacity(0.9),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),

          child: Row(
            // mainAxisSize: MainAxisSize.min,
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

              const SizedBox(width: 15),
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Color(0xffECE9E1)),
                  decoration: const InputDecoration(
                    hintText: "Enter Your Long Links",
                    hintStyle: TextStyle(color: Color(0xffECE9E1)),

                    border: InputBorder.none,
                  ),
                ),
              ),
              // Spacer(),
              const SizedBox(width: 10),

              Padding(
                padding: const EdgeInsets.all(1.0),
                child: SizedBox(
                  // height: double.infinity,
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffECE9E1),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    ),
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
      ),
    );
  }
}
