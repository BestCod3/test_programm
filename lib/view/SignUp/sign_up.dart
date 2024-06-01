import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_programm/view/SignUp/controller.dart';

import '../../widgets/register_widgets/widgets_on_register.dart';
import '../SignIn/sign_in.dart';

class SignUpView extends StatelessWidget {
  SignUpView({Key? key}) : super(key: key);
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
            gradient: const LinearGradient(
              colors: [Colors.white, Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Create Account',
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  const Text(
                    'to get started now!',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 35,
                    ),
                  ),
                  sizedBox,
                  TextField(
                    onChanged: (value) {
                      controller.name.value = value;
                    },
                    showCursor: true,
                    decoration: registerDecoration.copyWith(hintText: 'Name'),
                  ),
                  sizedBox,
                  TextField(
                    onChanged: (value) {
                      controller.email.value = value;
                    },
                    showCursor: true,
                    decoration:
                        registerDecoration.copyWith(hintText: 'Email Address'),
                  ),
                  sizedBox,
                  TextField(
                    onChanged: (value) {
                      controller.password.value = value;
                    },
                    showCursor: true,
                    decoration:
                        registerDecoration.copyWith(hintText: 'Password'),
                  ),
                  sizedBox,
                  RegisterWidget(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                      controller.signUp(context);
                    },
                    text: "Sign Up",
                  ),
                  sizedBox,
                  OrSign(
                    text: "Or Sign Up with",
                    text1: "",
                    onTap: () {},
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SignWith(
                        image: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/2991/2991148.png",
                        ),
                      ),
                      SignWith(
                        image: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/4494/4494475.png",
                        ),
                      ),
                    ],
                  ),
                  sizedBox,
                  sizedBox,
                  OrSign(
                    text: "Already have an account?   ",
                    text1: "Login Now",
                    onTap: () {
                      Get.to(SignInView());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
