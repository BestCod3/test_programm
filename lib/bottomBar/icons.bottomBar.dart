import 'package:flutter/material.dart';

class IconBottom extends StatelessWidget {
  IconBottom(
      {super.key,
      required this.icony,
      required this.text,
      required this.onPressed});
  final String text;
  final Icon icony;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: IconButton(
                icon: icony,
                color: Colors.grey,
                onPressed: onPressed,
                iconSize: 30,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
          ],
        ),
      ],
    );
  }
}
