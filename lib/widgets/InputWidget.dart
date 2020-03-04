import 'package:flutter/material.dart';
import 'package:messio/config/Palette.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          // primo
          Material(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: Icon(Icons.face),
                color: Palette.primaryColor, 
                onPressed: () {  },
              ),
            ),
            color: Colors.white,
          ),

          // secondo
          // Text input
          Flexible(
            child: Container(
              child: TextField(
                style: TextStyle(
                  color: Palette.primaryTextColor,
                  fontSize: 15.0,
                ),
                controller: textEditingController, // controllo testo
                decoration: InputDecoration.collapsed(
                  hintText: 'Type a message',
                  hintStyle: TextStyle(
                    color: Palette.greyColor,
                  ),
                ),
              ),
            ),
          ),

          //terzo
          // Send Message Button
          Material(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => {},
                color: Palette.primaryColor,
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      width: double.infinity,
      height: 50.0,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Palette.greyColor,
            width: 0.5,
          ),
        ),
        color: Colors.white,
      ),
    );
  }
}
