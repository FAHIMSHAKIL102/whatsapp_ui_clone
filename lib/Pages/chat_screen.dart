import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/contacts.dart';
import 'package:whatsapp_ui_clone/Custom_Widget/message_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    MessageScreen(messageTitle: contacts[index]['name']),
              ),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(contacts[index]['profilePic']),
            ),
            title: Text(contacts[index]['name']),
            subtitle: Text(contacts[index]['message']),
            trailing: Text(contacts[index]['time']),
          );
        },
      ),
    );
  }
}
