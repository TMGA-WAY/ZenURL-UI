import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({super.key, required this.title, required this.onPressed});
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // child: Text(title, style: TextStyle(fontSize: 18, color: const Color(0xffE43C13))),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: title == 'Register Now' ? const Color(0xff144EE3) : const Color(0xffECE9E1),
            ),
            onPressed: () {},
            child: Text(title, style: TextStyle(fontSize: 18, color: title == 'Register Now' ? const Color(0xffFFFFFF) : const Color(0xffE43C13))),
          ),
        ),
      ),
    );
  }
}
