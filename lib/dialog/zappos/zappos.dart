import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/dialog/Amazon/AmazonView.dart';

class ZapposDialog extends StatelessWidget {
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
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.network(
                  "https://cdn6.aptoide.com/imgs/0/c/7/0c7696be11558c5a00b00daeb55db980_icon.png"),
              SizedBox(height: 16),
              Text(
                'Amazon',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Zappos.com — американский интернет-магазин обуви и одежды, базирующийся в Лас-Вегасе, штат Невада, США. Компания была основана в 1999 году Ником Суинмурном и запущена под доменным именем Shoesite.com.S',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  Get.to(AmazonView(
                      initialUrl:
                          "https://www.zappos.com/")); // Закрываем диалоговое окно
                },
                child: Text(
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
