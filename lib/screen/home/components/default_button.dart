import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class DefaultButton extends StatelessWidget {
  final String title;
  final Function press;

  const DefaultButton({
    Key key, this.title, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          title.toUpperCase(),
        ),
      ),
    );
  }
}
