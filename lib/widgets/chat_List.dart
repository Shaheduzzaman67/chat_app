import 'package:chat_app/widgets/chat_message.dart';
import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, dynamic>> snapShot;
  const ChatList({Key key, this.snapShot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(8.0),
        reverse: true,
        itemCount: snapShot.length,
        itemBuilder: (_, int index) => ChatMessage(
          snapShot: snapShot[index],
        ),
      ),
    );
  }
}
