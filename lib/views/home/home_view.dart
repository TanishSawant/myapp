import 'package:flutter/material.dart';
import 'package:myapp/Widgets/NavigationBar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
        children: [
          NavigationBar(),
        ],
      ),
    );
  }
}