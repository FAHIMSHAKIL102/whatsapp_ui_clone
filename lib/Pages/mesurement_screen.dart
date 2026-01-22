import 'package:flutter/material.dart';

class MesurementScreen extends StatelessWidget {
  const MesurementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

// Inside a build method:
final double statusBarHeight = MediaQuery.of(context).padding.top;
final double appBarAndStatusBarHeight = kToolbarHeight + statusBarHeight;

// To get the remaining body height:
final double screenHeight = MediaQuery.of(context).size.height;
final double bodyHeight = screenHeight - appBarAndStatusBarHeight;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('Tab'),
          Text('Height ${currentHeight.toString()}'),
          Text('Width ${currentWidth.toString()}'),

          Text('StatusBar ${statusBarHeight.toString()}'),
          Text('AppBar ${appBarAndStatusBarHeight.toString()}'),
          Text('Width ${screenHeight.toString()}'),
          Text('Width ${bodyHeight.toString()}'),

         // Text('Width ${totalHeight.toString()}'),
        ],
      ),
    );
  }
}
