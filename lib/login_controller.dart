import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'package:zegocloude_chat_app/home_screen.dart';

class LoginController extends GetxController {
  final TextEditingController userIDController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  Future<void> login() async {
    try {
      await ZIMKit().connectUser(
        id: userIDController.text.trim(),
        name: userNameController.text.trim(),
      );

      Get.offAll(() => const HomeScreen());
    } catch (e) {
      Get.snackbar("Login Failed", e.toString(),
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
