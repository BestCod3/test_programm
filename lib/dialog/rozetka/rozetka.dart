import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/dialog/Amazon/AmazonView.dart';

class RozetkaDialog extends StatelessWidget {
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
              Image.network(
                  "https://yt3.googleusercontent.com/sMOdbRU1Bu3_I3Zm5dS2pJ6xOC31z7oFr5JH-nvK7qSVdYRyA4bVkEbr--69g0sOz8ELpef6Zw=s900-c-k-c0x00ffffff-no-rj"),
              const SizedBox(height: 16),
              const Text(
                'Цитрус',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Розе́тка — украинский интернет-магазин и маркетплейс, появившийся в 2005 году. Имеет отделения в Киеве, Одессе, Львове, Житомире и в Броварах. На август 2020 года сайт занимает 7 место среди самых посещаемых на Украине.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.to(AmazonView(
                      initialUrl:
                          "https://rozetka.com.ua/")); // Закрываем диалоговое окно
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
//     return CustomDialog();
//   },
// );
