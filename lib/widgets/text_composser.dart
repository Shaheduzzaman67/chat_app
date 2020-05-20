import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  final Function(String) callBack;

  const TextComposer({Key key, this.callBack}) : super(key: key);

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer>
    with TickerProviderStateMixin {
  final TextEditingController _textEditingController = TextEditingController();
  bool _isComposing = false;

  void handleSubmitted(String text) {
    _textEditingController.clear();
    setState(() {
      _isComposing = false;
      widget.callBack(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
      ),
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).accentColor),
        child: Container(
          child: Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.image),
              ),
              Flexible(
                child: TextField(
                  onSubmitted: handleSubmitted,
                  controller: _textEditingController,
                  onChanged: (String text) {
                    setState(() {
                      _isComposing = text.length > 0;
                    });
                  },
                  decoration: InputDecoration.collapsed(
                    hintText: "Send Text",
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: _isComposing
                    ? () => handleSubmitted(_textEditingController.text)
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
