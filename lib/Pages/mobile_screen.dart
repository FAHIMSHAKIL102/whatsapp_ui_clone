import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/Pages/call_screen.dart';
import 'package:whatsapp_ui_clone/Pages/chat_screen.dart';
import 'package:whatsapp_ui_clone/Pages/status_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp', style: TextStyle(color: Colors.white)),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                child: Text('Chats', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Status', style: TextStyle(color: Colors.white)),
              ),
              Tab(
                child: Text('Calls', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search, color: Colors.white),
            SizedBox(width: 10),
            PopupMenuButton(
              iconColor: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem(value: '1', child: Text('New Group')),
                PopupMenuItem(value: '2', child: Text('Settings')),
                PopupMenuItem(value: '3', child: Text('Logout')),
              ],
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.green,
        ),

        body: TabBarView(
          children: [ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}
