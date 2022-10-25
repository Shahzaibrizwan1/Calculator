import 'package:flutter/material.dart';

class MYButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MYButton(
      {super.key,
      required this.title,
      this.color = (const Color.fromARGB(255, 90, 171, 238)),
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Container(
              height: 80,
              decoration: BoxDecoration(color: color, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
