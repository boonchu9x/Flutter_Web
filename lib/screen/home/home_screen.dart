import 'package:flutter/material.dart';
import 'package:food_web/screen/home/components/app_bar.dart';
import 'package:food_web/screen/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this is provide us total height and width of out screen
    return Scaffold(
      body: Container(
        height: size.height,

        //it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            //match parent
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            //chiếm 1/3 của khoảng trống
            Spacer(),
            Body(),
            //chiếm 2/3 của khoảng trống
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
