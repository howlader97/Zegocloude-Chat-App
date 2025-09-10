import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
import 'package:zegocloude_chat_app/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(child: Text('ConVerStations', style: TextStyle())),
      ),
      body: ZIMKitConversationListView(
        onPressed: (context, conversation, _) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(conversationID: conversation.id),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo,
        onPressed: () {
          _startNewChat(context);
        },
        child: Icon(Icons.chat),
      ),
    );
  }

  void _startNewChat(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        final userIDController = TextEditingController();
        return AlertDialog(
          title: Text('Start New Chat'),
          content: TextField(
            controller: userIDController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter User ID',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ChatScreen(conversationID: userIDController.text),
                  ),
                );
              },
              child: Text('Start Chat'),
            ),
          ],
        );
      },
    );
  }
}
