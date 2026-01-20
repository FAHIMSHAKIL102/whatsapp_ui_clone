import 'package:flutter/material.dart';

class ResponseScreen extends StatelessWidget {
  const ResponseScreen({
    super.key,
    required this.MobileScreen,
    required this.TabScreen,
  });
  final Widget MobileScreen;
  final Widget TabScreen;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return TabScreen;
        } else {
          return MobileScreen;
        }
      },
    );
  }
}
