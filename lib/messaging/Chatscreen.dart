// ignore_for_file: prefer_const_constructors

import 'package:firstapp101/messaging/chatmessage.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  
  final TextEditingController _textController = TextEditingController();

  final List<ChatMessage> _message = <ChatMessage>[];

  void _handleSubmitted(String text) {
    ChatMessage message = new ChatMessage(text: text);

    setState(() {
      _message.insert(0, message);
    });
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return IconTheme(
      data: IconThemeData(color: Colors.blue),
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
          child: Row(
            children: [
              Flexible(
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Send a message"),
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () =>
                        _handleSubmitted(_textController.value.text)),
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView.builder(
          padding: EdgeInsets.all(8),
          reverse: true,
          itemBuilder: (_, int index) => _message[index],
          itemCount: _message.length,
        )),
        Divider(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
