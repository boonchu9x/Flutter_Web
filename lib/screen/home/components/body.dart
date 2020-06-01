import 'package:flutter/material.dart';
import 'package:food_web/screen/home/constant.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Burger'.toUpperCase(),
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor \nincididunt ut labore et dolore',
            style: TextStyle(
              fontSize: 21,
              color: kTextColor.withOpacity(0.34),
            ),
          ),
          FittedBox(
            //just take the required spaces
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34),
                color: Color(0xFF372930),
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 38,
                    width: 38,
                    //circle yellow
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      //cicrl in button
                      shape: BoxShape.circle,
                    ),
                    //circle black
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Get Started'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 15)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
