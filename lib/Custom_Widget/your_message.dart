import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/LightText.dart';

class YourMessage extends StatelessWidget {
  const YourMessage({super.key, required this.messageText});
  final String messageText;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: SizedBox(
        width: MediaQuery.widthOf(context) * .5,
        child: LightText(text: messageText, size: 18),
      ),
    );
  }
}
