import 'package:chat_app/models/records.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final Map<String, dynamic> snapShot;
  const ChatMessage({Key key, this.snapShot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final record = Record.fromMap(snapShot);
    return Container(
      child: Row(
        children: <Widget>[
          CircleAvatar(
            child: Text(
              record.name[0],
            ),
          ),
          Text(record.text),
        ],
      ),
    );
  }
}
