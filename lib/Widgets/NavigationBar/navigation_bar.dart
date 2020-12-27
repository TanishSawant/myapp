import 'package:flutter/material.dart';
import 'package:myapp/Constants/constants.dart';
import 'package:myapp/about_view.dart';
import 'package:myapp/contact_us.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 17.0,
            width: MediaQuery.of(context).size.height / 17.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25.0)
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem(
                'Contact Us',
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUs())
                );},  
              ),
              SizedBox(
                width: 60,
              ),
              _NavBarItem(
                'About',
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage())
                );},  
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final Function onPressed;
  const _NavBarItem(
    this.title, {
    Key key, this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Text(
        title,
        style: poppinsTextStyle,
      ),
    );
  }
}

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          Container(
            height: MediaQuery.of(context).size.height / 17.0,
            width: MediaQuery.of(context).size.height / 17.0,
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(25.0)
            ),
          ),
        ],
      ),
    );
  }
}