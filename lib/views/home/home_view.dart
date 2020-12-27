import 'package:flutter/material.dart';
import 'package:myapp/Widgets/NavigationBar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
          children: [
            ScreenTypeLayout(
              mobile: NavigationBarMobile(),
              desktop: NavigationBar(),
              tablet: NavigationBar(),
            )
          ],
        ),
      ),
    );
  }
}