import 'package:flutter/material.dart';

class listMenu extends StatelessWidget {
  const listMenu(
      {super.key,
      required this.image,
      required this.image1,
      required this.image2,
      required this.text,
      required this.text1,
      required this.text2,
      required this.ontap,
      required this.ontap1,
      required this.ontap2});
  final String image;
  final String image1;
  final String image2;
  final String text;
  final String text1;
  final String text2;
  final Function() ontap;
  final Function() ontap1;
  final Function() ontap2;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          dishesOption(onTap: ontap, image: image, text: text),
          dishesOption(onTap: ontap1, image: image1, text: text1),
          dishesOption(onTap: ontap2, image: image2, text: text2),
        ],
      ),
    );
  }
}

class dishesOption extends StatelessWidget {
  const dishesOption(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  final String image;
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.network(
            image,
            height: 110,
            width: 110,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(text,
              style:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
