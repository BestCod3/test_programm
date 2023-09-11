import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.text, required this.urlImage});
  final String text;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: 400,
            height: 148,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  urlImage,
                ),

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
    );
  }
}
