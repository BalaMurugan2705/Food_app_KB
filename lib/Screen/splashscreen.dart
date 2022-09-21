import 'package:flutter/material.dart';
import 'package:food_app_2/helper/nav_helper.dart';

import '../helper/Style.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splash_screen.svg"),
                fit: BoxFit.fitWidth),
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
              ),
              InkWell(
                onTap: (){
                  openScreen(welcome,requiresAsInitial: true);
                  print("object");
                },
                child: Text(
                  "Click To Proceed",
                  style: FdStyle.sofia(

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
