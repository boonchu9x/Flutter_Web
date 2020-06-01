import 'package:flutter/material.dart';
import 'package:food_web/menu_item/menu_item.dart';
import 'default_button.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        //màu white
        color: Colors.white,
        //border 46
        borderRadius: BorderRadius.circular(46),
        //shadow appbar
        boxShadow: [
          BoxShadow(
            //shadow x =0, y - -2
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          //image logo start
          Image.asset(
            "assets/images/logo.png",
            height: 25,
            alignment: Alignment.topCenter,
          ),

          //padding end 5
          SizedBox(width: 5),

          //text Foodi
          Text(
            'Foodi'.toUpperCase(),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          MenuItem(
            title: 'Home',
            press: () {},
          ),
          MenuItem(
            title: 'About',
            press: () {},
          ),
          MenuItem(
            title: 'Pricing',
            press: () {},
          ),
          MenuItem(
            title: 'Contact',
            press: () {},
          ),
          MenuItem(
            title: 'Login',
            press: () {},
          ),
          DefaultButton(
            title: 'Get Started',
            press: () {},
          ),
        ],
      ),
    );
  }
}
