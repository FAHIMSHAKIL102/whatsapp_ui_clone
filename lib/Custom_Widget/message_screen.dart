import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/BoldText.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/Colors.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/contacts.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/my_message.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/your_message.dart';

class MessageScreen extends StatefulWidget {
  MessageScreen({super.key, required this.messageTitle});
  final String messageTitle;

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BoldText(text: widget.messageTitle),
        backgroundColor: tabColor,
      ),
      body: SizedBox(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              child: messages[index]['isMe'] == true
                  ? MyMessage(messageText: messages[index]['text'])
                  : YourMessage(messageText: messages[index]['text']),
            );
          },
          itemCount: messages.length,
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.add),
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: MediaQuery.widthOf(context) * .6,
              child: TextField(
                controller: messageController,
                decoration: InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Map<String, dynamic> map = {
                  "isMe": true,
                  "text": messageController.text,
                  "time": DateTime.now(),
                };
                setState(() {
                  messages.add(map);
                  messageController.clear();
                });
              },
              icon: Icon(Icons.send),
            ),
          ],
        ),
      ),
    );
  }
}
