import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/LightText.dart';

class MyMessage extends StatelessWidget {
  const MyMessage({super.key, required this.messageText});

  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green.shade400,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.widthOf(context) * .5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: LightText(text: messageText, color: Colors.white, size: 18),
        ),
      ),
    );
  }
}
