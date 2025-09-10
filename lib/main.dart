import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'package:zegocloude_chat_app/login_screen.dart';

void main() {
  ZIMKit().init(appID: 1779782285,
      appSign: "94fd68520b2d47033f91130ec6d3f6742bc41fc3e678bf0192fb7a195e6efe6b");
  runApp(MYChatApp());
}

class MYChatApp extends StatelessWidget {
  const MYChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'chat app',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: LoginScreen(),
    );
  }
}
