import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_web/screen/home/constant.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function press;

  const MenuItem({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        //set padding ngang horizontal 15
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextColor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
