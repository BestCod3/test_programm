import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/dialog/Amazon/AmazonView.dart';
import 'package:test_programm/view/AsianKitchen/card_controller.dart';
import 'package:test_programm/view/ProductDetails/product_details_page.dart';

import '../HeadView/head_view_widgets.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.imageUrl,
      required this.fulltext,
      required this.text,
      required this.text1});
  final String imageUrl;
  final String text;
  final String text1;
  final String fulltext;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(imageUrl),
              const SizedBox(height: 16),
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: text,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const TextSpan(text: '   '),
                  TextSpan(
                    text: text1,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff828796),
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 8),
              Text(
                fulltext,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.to(ProductDetailsPage(
                    cart: Cart(),
                    imageUrl: imageUrl,
                    text: text,
                    text1: text1,
                    fulltext: fulltext,
                  ));
                },
                child: const Text(
                  'Перейти',
                  style: TextStyle(
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Для вызова диалогового окна используйте следующий код
// showDialog(
//   context: context,
//   builder: (BuildContext context) {
//     return ZapposDialog();
//   },
// );

