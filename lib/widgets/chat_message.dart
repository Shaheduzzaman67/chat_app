import 'package:chat_app/models/records.dart';
import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final Map<String, dynamic> snapShot;
  const ChatMessage({Key key, this.snapShot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final record = Record.fromMap(snapShot);
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              child: Text(
                record.name[0],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(record.text),
            ),
          ),
        ],
      ),
    );
  }
}
