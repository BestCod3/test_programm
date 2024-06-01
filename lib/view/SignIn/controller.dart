import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/view/HeadView/HeadView.dart';

class SignInController extends GetxController {
  Rx<String> email = "".obs;
  Rx<String> password = "".obs;

  Future<void> signIn() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      // При успешном входе переходим на следующий экран
      Get.to(HeadView());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        // Если пользователь не найден, выводим сообщение
        Get.snackbar(
          "Ошибка",
          "Пользователь с таким email не найден.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        // Выводим также сообщение в лог
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        // Если пароль неверный, выводим сообщение
        Get.snackbar(
          "Ошибка",
          "Неверный пароль.",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        // Выводим также сообщение в лог
        log('Wrong password provided for that user.');
      } else {
        // Если произошла другая ошибка, выводим ее сообщение
        Get.snackbar(
          "Ошибка",
          "Произошла ошибка: ${e.message}",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        // Выводим также сообщение в лог
        log('FirebaseAuthException: ${e.code}');
      }
    }
  }

  // Остальной код вашего контроллера оставляем без изменений
}
