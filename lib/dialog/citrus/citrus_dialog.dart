import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/dialog/Amazon/AmazonView.dart';

class CitrusDialog extends StatelessWidget {
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
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrRt4-ylNnA-c_XqoU-djzY_j9aUq5kyjgBgO0d8OoJ3TOF0ASQgfTaYpV_zBc6Fj-LGo&usqp=CAU"),
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
                'Цитрус — это самый современный магазин электроники и аксессуаров в Украине. Современный формат, мгновенное обслуживание клиентов позволили компании быстро завоевать доверие на рынке гаджетов и электронных девайсов. Сегодня в Украине более 60 магазинов сети, в которых представлены топовые модели смартфонов, ноутбуков, другой техники.',
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
                          "https://www.ctrs.com.ua/")); // Закрываем диалоговое окно
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
