import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_programm/view/LandingView/controller.dart';

import '../../widgets/register_widgets/widgets_on_register.dart';
import '../SignIn/sign_in.dart';
import '../SignUp/sign_up.dart';

class LandingView extends GetView<LandingViewController> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sizedBox = SizedBox(
      height: 20,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
            gradient: const LinearGradient(
                colors: [Colors.white, Colors.grey],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RegisterWidget(
                    onTap: () {
                      Get.to(SignInView());
                    },
                    text: "Войти"),
                sizedBox,
                RegisterWidget(
                    onTap: () {
                      Get.to(SignUpView());
                    },
                    text: "Зарегистрироваться"),
                sizedBox,
                sizedBox,
                sizedBox,
                OrSign(
                  text: "Continue as a  quest",
                  text1: "",
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
