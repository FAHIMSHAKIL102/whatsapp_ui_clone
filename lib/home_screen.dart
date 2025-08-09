import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Whatsapp'),
          bottom: TabBar(
            tabs: [
              Tab(child: Icon(Icons.camera_alt)),
              Tab(child: Text('Chats')),
              Tab(child: Text('Status')),
              Tab(child: Text('Calls')),
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 10),
            PopupMenuButton(
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
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 155,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    ),
                  ),
                  title: Text('Sifat'),
                  subtitle: Text('where is my dog?'),
                  trailing: Text('5:30 PM'),
                );
              },
            ),
            Text('Status'),
            ListView.builder(
              itemCount: 155,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://plus.unsplash.com/premium_photo-1689568126014-06fea9d5d341?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                    ),
                  ),
                  title: Text('Sifat'),
                  subtitle: Text('you missed call'),
                  trailing: Icon(Icons.phone),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
