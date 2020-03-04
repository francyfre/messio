import 'package:flutter/material.dart';
import 'ChatItemWidget.dart';

// GENERARE LISTA MESSAGGI IN LISTVIEW
class ChatListWidget extends StatelessWidget {
  // controller per la listView
  final ScrollController listScrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(
          10.0,
        ),
        itemBuilder: (context, index) =>
            ChatItemWidget(index), //costruisce il mex
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}
