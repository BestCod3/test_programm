import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories(
      {super.key,
      required this.text,
      required this.urlImage,
      required this.onPressed});
  final String text;
  final String urlImage;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                image: DecorationImage(
                  image: NetworkImage(urlImage,
                      scale: kMiniButtonOffsetAdjustment),

                  // URL изображения
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Positioned(
              top: 12,
              left: 38,
              child: Text(
                // homeText,
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
