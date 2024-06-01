import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Rx<DateTime> dateTime = DateTime.now().obs;

  void getCurrentDateTime() {
    dateTime(DateTime.now());
  }
  // RxString homeText = ''.obs;
  // RxString imageURL = ''.obs;

  //  void initState() {
  //   super.initState();
  //   showWeatherByLocation();
  // }

  // Future<void> showWeatherByLocation() async {
  //   await getData();
  // }

  // Future<void> getData() async {
  //   try {
  //     final client = http.Client();
  //     final url =
  //         'https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54';
  //     Uri uri = Uri.parse(url);
  //     final result = await client.get(uri);

  //     if (result.statusCode == 200) {
  //       final jsonResult = json.decode(result.body);

  //       print('JSON-структура:');
  //       print(jsonResult); // Вывести содержимое JSON-структуры в консоль

  //       // Получение поля "name" из JSON-структуры
  //       if (jsonResult.containsKey('categories') &&
  //           jsonResult['categories'] is Map<String, dynamic> &&
  //           jsonResult['categories'].containsKey('1') &&
  //           jsonResult['categories']['1'] is Map<String, dynamic> &&
  //           jsonResult['categories']['1'].containsKey('name')) {
  //         homeText = jsonResult['categories']['1']['name'];
  //       } else {
  //         // Обработка случая, когда ключи отсутствуют или структура JSON некорректна
  //         homeText = 'Данные недоступны';
  //       }

  //       log('response ===> ${jsonResult}');
  //       setState(() {});
  //     } else {
  //       throw Exception('Ошибка HTTP-запроса: ${result.statusCode}');
  //     }

  //     log('response ==> ${result.body}');
  //   } catch (e) {
  //     log('$e');
  //     // Обработка ошибок, например, отображение сообщения об ошибке
  //   }
  // }
}
