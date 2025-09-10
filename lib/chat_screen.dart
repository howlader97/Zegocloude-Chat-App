import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class ChatScreen extends StatelessWidget {
  final String conversationID;

  const ChatScreen({super.key, required this.conversationID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZIMKitMessageListPage(conversationID: conversationID,
      conversationType:ZIMKitConversationType.peer,
      ),
    );
  }
}
