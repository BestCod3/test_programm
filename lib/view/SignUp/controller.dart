import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  Rx<String> email = "".obs;
  Rx<String> name = "".obs;
  Rx<String> password = "".obs;
  Rx<String> userName = "".obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUp(BuildContext context) async {
    debugPrint("Начало процесса регистрации");

    if (password.value.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Пароль должен содержать не менее 6 символов'),
          backgroundColor: Colors.red,
        ),
      );
      debugPrint("Ошибка: Пароль слишком короткий");
      return;
    }

    try {
      debugPrint("Попытка регистрации пользователя с email: ${email.value}");
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email.value,
        password: password.value,
      );
      debugPrint(
          "Регистрация прошла успешно для пользователя с UID: ${userCredential.user!.uid}");

      await _firestore.collection("users").doc(userCredential.user!.uid).set({
        'name': name.value,
        'email': email.value,
      });
      debugPrint("Пользователь добавлен в Firestore");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Регистрация прошла успешно'),
          backgroundColor: Colors.green,
        ),
      );
      debugPrint("Успех: Регистрация прошла успешно");

      await fetchUserName(); // Извлекаем имя пользователя после успешной регистрации
    } on FirebaseAuthException catch (e) {
      debugPrint("FirebaseAuthException: ${e.code}");
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Пароль слишком слабый'),
            backgroundColor: Colors.red,
          ),
        );
        debugPrint("Ошибка: Пароль слишком слабый");
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Такой пользователь уже существует'),
            backgroundColor: Colors.red,
          ),
        );
        debugPrint("Ошибка: Такой пользователь уже существует");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Не удалось зарегистрироваться: ${e.message}'),
            backgroundColor: Colors.red,
          ),
        );
        debugPrint("Ошибка: Не удалось зарегистрироваться: ${e.message}");
      }
    } catch (e) {
      debugPrint("Exception: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Что-то пошло не так. Попробуйте еще раз.'),
          backgroundColor: Colors.red,
        ),
      );
      debugPrint("Ошибка: Что-то пошло не так. Попробуйте еще раз.");
    }
  }

  Future<void> fetchUserName() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot userDoc =
            await _firestore.collection('users').doc(user.uid).get();
        if (userDoc.exists) {
          userName.value = userDoc['name'];
          debugPrint("Имя пользователя успешно извлечено: ${userName.value}");
        } else {
          debugPrint("Документ пользователя не существует");
        }
      }
    } catch (e) {
      debugPrint("Ошибка при извлечении имени пользователя: $e");
    }
  }
}
