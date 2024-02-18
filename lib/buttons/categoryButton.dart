import 'package:flutter/material.dart';

Color inactiveColor = Color.fromRGBO(248, 247, 245, 1);
Color activeColor = Colors.blue;

class CategoryButton extends StatelessWidget {
  const CategoryButton(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String text;
  final Color color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.height * 0.09,
          decoration: BoxDecoration(
              color: color,
              // color: const Color.fromRGBO(248, 247, 245, 1),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
