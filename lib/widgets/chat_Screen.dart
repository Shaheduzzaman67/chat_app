import 'dart:wasm';

import 'package:chat_app/widgets/chat_List.dart';
import 'package:chat_app/widgets/text_composser.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> _dummyText = [];
  Void _sendMessageCallBack(String text) {
    setState(() {
      _dummyText.insert(0, {
        "name": "Shishir",
        "avaterUrl": "",
        "photoUrl": "",
        "text": text,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text(
            "Chat App",
          ),
        ),
        body: Column(
          children: <Widget>[
            ChatList(
              snapShot: _dummyText,
            ),
            Divider(height: 1.0),
            TextComposer(
              callBack: _sendMessageCallBack,
            )
          ],
        ));
  }
}
